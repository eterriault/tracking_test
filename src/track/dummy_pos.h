#ifndef DUMMY_POS_H
#define DUMMY_POS_H

#include <ros/ros.h>
#include <geometry_msgs/Point.h>

class DummyPos
{
public:
    DummyPos(int x, int y, int m);
    ~DummyPos();

    void setPos(int x, int y);
    geometry_msgs::Point getPos();
    geometry_msgs::Point move();
    int getError();

    ros::NodeHandle n;
    ros::Publisher pub;
    

private:
    geometry_msgs::Point msg_;
    int m;
    std::default_random_engine generator_;
    std::uniform_int_distribution<int> dist_;

};


#endif
