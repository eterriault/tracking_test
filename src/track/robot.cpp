#include "robot.h"
#include <cmath>

#define NB_POS_IN_MEMORY 15

Robot::Robot()
{
  this->isNew = true;
//  this->incertitude = -1;
  this->incertitude = 0;
  this->speed = 0.33;
}
Robot::Robot(int id, uint8_t color) {
    this->id = id;
    this->color = color;
    this->isNew = true;
    //this->incertitude = -1;
      this->incertitude = 0;    
    this->speed = 0.33;
}

Robot::~Robot() {

}

double Robot::getDistanceFrom(geometry_msgs::Point pos) {
    return sqrt(pow(pos.x - this->poseOrigin.pose.position.x, 2) + pow(pos.y - this->poseOrigin.pose.position.y, 2));
}

void Robot::setPos(geometry_msgs::PoseStamped pose) {
    this->poseOrigin = pose;
    this->poseOrigin.header.stamp = ros::Time::now();
    this->incertitude = 0;

    this->positions.push_front(pose.pose.position);
    while(this->positions.size() > NB_POS_IN_MEMORY) {
        this->positions.pop_back();
    }
    this->updateOrientation();
}

void Robot::setFcu(geometry_msgs::PoseStamped pose) {
    this->fcu = pose;
    this->fcu.header.stamp = ros::Time::now();
}

void Robot::updateOrientation() {
    float x = this->positions.front().x - this->positions.back().x;
    float y = this->positions.front().y - this->positions.back().y;
    
    float normal = sqrt(x*x + y*y);
    this->orientation.x = x / normal;
    this->orientation.y = y / normal; 
}

geometry_msgs::Vector3 Robot::getOrientation() {
    return this->orientation;
}

void Robot::setColor(uint8_t color) {
    this->color = color;
}

uint8_t Robot::getColor() {
    return this->color;
}

void Robot::setIncertitude(double incertitude) {
    this->incertitude = incertitude;
}

double Robot::getIncertitude() {
    return this->incertitude;
}

void Robot::setSpeed(double speed) {
    this->speed = speed;
}

double Robot::getSpeed() {
    return this->speed;
}

double Robot::updateIncertitude(int dt) {

    //si dt est en nanosecondes
    this->incertitude += (float)(dt / pow(10, 9)) * this->speed;
    ROS_INFO("Incertitude for %d is now %f", this->id, this->incertitude);
    return this->incertitude;
}