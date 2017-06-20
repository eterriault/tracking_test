#ifndef ROBOT_H
#define ROBOT_H

#include <ros/ros.h>
#include <geometry_msgs/PoseStamped.h>
#include <geometry_msgs/Vector3.h>
#include <geometry_msgs/Point.h>
#include <list>

class Robot
{
public:
    Robot(int id, uint8_t color);
    Robot();
    ~Robot();

    void setPos(geometry_msgs::PoseStamped pose);
    geometry_msgs::PoseStamped getPos();

    void setFcu(geometry_msgs::PoseStamped pose);
    geometry_msgs::PoseStamped getFcu();

    void updateOrientation();
    geometry_msgs::Vector3 getOrientation();

    void setColor(uint8_t color);
    uint8_t getColor();

    void setId(uint8_t id) {id = this->id;}
    uint8_t getId() {return id;}

    void setTime(ros::Time time);
    ros::Time getTime();

    void setIncertitude(double incertitude);
    double getIncertitude();

    void setSpeed(double speed);
    double getSpeed();

    double updateIncertitude(int dt);

    double getDistanceFrom(geometry_msgs::Point pos);

    bool isNew;


private:
    geometry_msgs::PoseStamped poseOrigin;
    geometry_msgs::PoseStamped fcu;
    uint8_t id;
    uint8_t color;
    ros::Time time;

    geometry_msgs::Vector3 orientation;
    std::list<geometry_msgs::Point> positions;

    //en m
    double incertitude;

    //en m/s
    double speed;

};


#endif
