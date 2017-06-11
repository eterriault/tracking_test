#include "robot.h"
#include <cmath>

Robot::Robot(int id) {
    this->id = id;
    this->isNew = true;
    this->incertitude = -1;
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
}

void Robot::setFcu(geometry_msgs::PoseStamped pose) {
    this->fcu = pose;
    this->fcu.header.stamp = ros::Time::now();
}

void Robot::setColor(uint8_t color) {
    this->color = color;
}

uint8_t Robot::getColor() {
    return this->color;
}