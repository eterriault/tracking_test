#include "dummy_pos.h"
#include <track/TargetRobot.h>
#include <track/TargetRobotArray.h>

int main(int argc, char **argv)
{

    ros::init(argc, argv, "dummy_pos_node");

    DummyPos dummy(0, 0, 10);
    DummyPos dummy2(50, 35, 15);

    dummy.pub = dummy.n.advertise<track::TargetRobotArray>("dummy_pos_0", 1000);

    ros::Rate loop_rate(10);

    while (ros::ok())
    {
        dummy.move();
        dummy2.move();

        track::TargetRobot msg;
        msg.poseOrigin.pose.position = dummy.getPos();
        track::TargetRobot msg2;
        msg2.poseOrigin.pose.position = dummy2.getPos();

        track::TargetRobotArray msg_arr;
        msg_arr.targets.push_back(msg);
        msg_arr.targets.push_back(msg2);
        
        dummy.pub.publish(msg_arr);

        ros::spinOnce();

        loop_rate.sleep();
    }


    return 0;
}

DummyPos::DummyPos(int x, int y, int m) {
    msg_.x = x;
    msg_.y = y;
    msg_.z = 0;
    this->m = m;
    dist_ = std::uniform_int_distribution<int>(-2, 2);
}

DummyPos::~DummyPos() {}

void DummyPos::setPos(int x, int y) {
    msg_.x = x;
    msg_.y = y;
}

geometry_msgs::Point DummyPos::getPos() {
    return msg_;
}

geometry_msgs::Point DummyPos::move() {
    msg_.x++;
    msg_.y += m + getError();
    return getPos();
}

int DummyPos::getError() {
    double error = dist_(generator_);
    return error;
}