
#include "ros/ros.h"
#include "msg/RobotPos.msg"
#include <geometry_msgs/Point.h>
#include "std_msgs/Header.h"
#include "opencv2/highgui/highgui.hpp"
#include "opencv2/video/tracking.hpp"

cv::KalmanFilter kf(stateSize, measSize);

void subCallback(const geometry_msgs::Point::ConstPtr& msg)
{
  ROS_INFO("I heard: [%f, %f, %f]", msg->x, msg->y, msg->z);
  //double dT = (ticks - precTick) / cv::getTickFrequency(); //seconds
}

int main(int argc, char **argv)
{
  ros::init(argc, argv, "tracking_node");

  ros::NodeHandle n;
  int stateSize = 6; //x ,vel_x, y, vel_y, theta, vel_theta
  int measSize = 3; //x, y, et theta
  unsigned int type = CV_32F;

  cv::Mat state(stateSize, 1, type);  // [x,v_x,y,v_y,theta,v_theta]
  cv::Mat meas(measSize, 1, type); 

   // Transition State Matrix A
   // Note: set dT at each processing step!
   // [ 1 0 dT 0  0 0 ]
   // [ 0 1 0  dT 0 0 ]
   // [ 0 0 1  0  0 0 ]
   // [ 0 0 0  1  0 0 ]
   // [ 0 0 0  0  1 0 ]
   // [ 0 0 0  0  0 1 ]
   cv::setIdentity(kf.transitionMatrix);

   // Measure Matrix H
   // [ 1 0 0 0 0 0 ]
   // [ 0 0 1 0 0 0 ]
   // [ 0 0 0 0 1 0 ]
   kf.measurementMatrix = cv::Mat::zeros(measSize, stateSize, type);
   kf.measurementMatrix.at(0) = 1.0f;
   kf.measurementMatrix.at(8) = 1.0f;
   kf.measurementMatrix.at(16) = 1.0f;

   // Measures Noise Covariance Matrix Q
   cv::setIdentity(kf.processNoiseCov);

   // Measures Noise Covariance Matrix R
   cv::setIdentity(kf.measurementNoiseCov);


  ros::Subscriber sub = n.subscribe("dummy_pos_0", 1000, subCallback);

  ros::spin();

  return 0;
}