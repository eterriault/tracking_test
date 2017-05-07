#include <sstream>

#include "ros/ros.h"
#include <geometry_msgs/Point.h>
#include "std_msgs/Header.h"
#include <iostream>
#include <random>

int main(int argc, char **argv)
{

  ros::init(argc, argv, "dummy_pos_node");

  ros::NodeHandle n;

  ros::Publisher dummy_pos_pub = n.advertise<geometry_msgs::Point>("dummy_pos_0", 1000);

  ros::Rate loop_rate(10);

  int count = 0;
  int max_increment = 1;
  int min_increment = -1;

  geometry_msgs::Point msg;

  msg.x = 0;
  msg.y = 0;
  msg.z = 0;

  std::default_random_engine generator;
  std::uniform_real_distribution<double> distribution(0.0,1.0);
  while (ros::ok())
  {

    int rand_incr = distribution(generator);

    msg.x++;
    msg.y = msg.x + rand_incr;

    dummy_pos_pub.publish(msg);

    ROS_INFO("Publishing %f, %f", msg.x, msg.y);
    ros::spinOnce();

    loop_rate.sleep();
    ++count;
  }


  return 0;
}