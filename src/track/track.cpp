#include "ros/ros.h"
#include <geometry_msgs/Point.h>
#include "std_msgs/Header.h"
#include "opencv2/highgui/highgui.hpp"
#include "opencv2/video/tracking.hpp"
#include "robot.h"
#include <track/TargetRobot.h>
#include <track/TargetRobotArray.h>
#include <vector>

#define RED 0
#define GREEN 1
const int NUM_ROBOTS_PER_COLOR =  1;

std::vector<Robot> redRobots(NUM_ROBOTS_PER_COLOR);
std::vector<Robot> greenRobots(NUM_ROBOTS_PER_COLOR);


int DoMatch(geometry_msgs::Pose inputPose, std::vector<Robot>& robots)
{

  double dist = DBL_MAX;
  //TODO: do smtgh like this:
  /*
  std::vector<type>::iterator iter = std::find_if(vec.begin(), vec.end(), comparisonFunc);
    size_t index = std::distance(vec.begin(), iter);
    if(index == vec.size())
   {
     //invalid
   }
   */
  int closestRobotIndex = robots.size();
  for(int i = 0; i<robots.size(); i++)
  {
    if(!robots.at(i).isNew) {

      double robotDist = robots.at(i).getDistanceFrom(inputPose.position);

      //On prend le robot le plus proche de la inputPose
      if(robotDist < dist) {
        //TODO: prendre en compte l'incertitude?
        dist = robotDist;
        closestRobotIndex = i;
      }
    }
  }

  if(closestRobotIndex) {
    //Si tous les robots sont nouveaux, on assigne au premier disponible
    for(int i = 0; i<robots.size(); i++)
      if(robots.at(i).isNew) {
        robots.at(i).isNew = false;
        closestRobotIndex = i;
        break;
      }
    }

 // ROS_INFO("Updated robot: %i", robots.at(closestRobotIndex).getId());

  //eturn robotGagnant;


}
void subCallback(const track::TargetRobotArray::ConstPtr& msg)
{

  for(int i = 0; i < msg->targets.size(); i++) {
    //ROS_INFO("I heard robot %d: [%f, %f]", i, msg->targets[i].poseOrigin.pose.position.x, msg->targets[i].poseOrigin.pose.position.y);

    int indexRobotGagnant = NUM_ROBOTS_PER_COLOR;
    if (msg->targets[i].color == RED)
    {
       indexRobotGagnant = DoMatch(msg->targets[i].poseOrigin.pose, redRobots);
       //ROS_INFO("Found robot: %i", greenRobots.at(indexRobotGagnant).getId());
       redRobots.at(indexRobotGagnant).setPos(msg->targets[i].poseOrigin);
       redRobots.at(indexRobotGagnant).setFcu(msg->targets[i].poseFcu);
       ROS_INFO("robot %d of orientation: [%f, %f]", i, redRobots.at(indexRobotGagnant).getOrientation().x, redRobots.at(indexRobotGagnant).getOrientation().y);

    }
    else if (msg->targets[i].color == GREEN)
    {
      indexRobotGagnant = DoMatch(msg->targets[i].poseOrigin.pose, greenRobots);
      ROS_INFO("Found robot: %i", greenRobots.at(indexRobotGagnant).getId());
      greenRobots.at(indexRobotGagnant).setPos(msg->targets[i].poseOrigin);
      greenRobots.at(indexRobotGagnant).setFcu(msg->targets[i].poseFcu);
      ROS_INFO("robot %d of orientation: [%f, %f]", i, greenRobots.at(indexRobotGagnant).getOrientation().x, greenRobots.at(indexRobotGagnant).getOrientation().y);

    }
    else
    {
      ROS_INFO ("Color does not match");
      return;
    }
  }
}



int main(int argc, char **argv)
{
  ros::init(argc, argv, "tracking_node");

  ros::NodeHandle n;

  //Create all robots
  for (int id = 0; id < NUM_ROBOTS_PER_COLOR; id++)
  {
    ROS_INFO("Creating robot with id: %d", id);
    redRobots.push_back(Robot(id, RED));
    //TODO: Decider si on fait un gros vecteur ou 2 petits pour chaque couleur
    ROS_INFO("Creating robot with id: %d", NUM_ROBOTS_PER_COLOR+id);

    redRobots.push_back(Robot(NUM_ROBOTS_PER_COLOR + id, GREEN));
  }

  ros::Subscriber sub = n.subscribe("dummy_pos_0", 1000, subCallback);

  //TODO: boucle infinie qui update les incertitudes de tous les robots
  ros::spin();


  return 0;
}
