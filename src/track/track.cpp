#include "ros/ros.h"
#include <geometry_msgs/Point.h>
#include "std_msgs/Header.h"
#include "opencv2/highgui/highgui.hpp"
#include "opencv2/video/tracking.hpp"
#include "robot.h"
#include <track/TargetRobot.h>
#include <track/TargetRobotArray.h>
#include <vector>

std::vector<Robot*> robots;


void subCallback(const track::TargetRobotArray::ConstPtr& msg)
{
    //ROS_INFO("size %lu", msg->targets.size());
    for(int i = 0; i < msg->targets.size(); i++) {
        ROS_INFO("I heard robot %d: [%f, %f]", i, msg->targets[i].poseOrigin.pose.position.x, msg->targets[i].poseOrigin.pose.position.y);

        double dist = DBL_MAX;
        Robot * robotGagnant = nullptr;
        for(auto robot : robots) {
            if(!robot->isNew && robot->getColor() == msg->targets[i].color) {
                double robotDist = robot->getDistanceFrom(msg->targets[i].poseOrigin.pose.position);
                if(robotDist < dist) {
                    dist = robotDist;
                    robotGagnant = robot;
                }
            }
        }

        if(robotGagnant == nullptr) {
            for(auto robot : robots) {
                if(robot->isNew) {
                    robot->isNew = false;
                    robotGagnant = robot;
                    break;
                }
            }
        }

        robotGagnant->setPos(msg->targets[i].poseOrigin);
        robotGagnant->setFcu(msg->targets[i].poseFcu);
        robotGagnant->setColor(msg->targets[i].color);

    }
}

int main(int argc, char **argv)
{
  ros::init(argc, argv, "tracking_node");

  ros::NodeHandle n;

  robots.push_back(new Robot(1));
  robots.push_back(new Robot(2));
  
  


  ros::Subscriber sub = n.subscribe("dummy_pos_0", 1000, subCallback);

  ros::spin();

  return 0;
}