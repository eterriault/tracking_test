// Generated by gencpp from file track/TargetRobot.msg
// DO NOT EDIT!


#ifndef TRACK_MESSAGE_TARGETROBOT_H
#define TRACK_MESSAGE_TARGETROBOT_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/PoseStamped.h>
#include <geometry_msgs/PoseStamped.h>

namespace track
{
template <class ContainerAllocator>
struct TargetRobot_
{
  typedef TargetRobot_<ContainerAllocator> Type;

  TargetRobot_()
    : id(0)
    , color(0)
    , poseOrigin()
    , poseFcu()  {
    }
  TargetRobot_(const ContainerAllocator& _alloc)
    : id(0)
    , color(0)
    , poseOrigin(_alloc)
    , poseFcu(_alloc)  {
  (void)_alloc;
    }



   typedef uint8_t _id_type;
  _id_type id;

   typedef uint8_t _color_type;
  _color_type color;

   typedef  ::geometry_msgs::PoseStamped_<ContainerAllocator>  _poseOrigin_type;
  _poseOrigin_type poseOrigin;

   typedef  ::geometry_msgs::PoseStamped_<ContainerAllocator>  _poseFcu_type;
  _poseFcu_type poseFcu;




  typedef boost::shared_ptr< ::track::TargetRobot_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::track::TargetRobot_<ContainerAllocator> const> ConstPtr;

}; // struct TargetRobot_

typedef ::track::TargetRobot_<std::allocator<void> > TargetRobot;

typedef boost::shared_ptr< ::track::TargetRobot > TargetRobotPtr;
typedef boost::shared_ptr< ::track::TargetRobot const> TargetRobotConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::track::TargetRobot_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::track::TargetRobot_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace track

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'track': ['/home/olstob/track_ws/src/track/msg'], 'geometry_msgs': ['/opt/ros/indigo/share/geometry_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::track::TargetRobot_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::track::TargetRobot_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::track::TargetRobot_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::track::TargetRobot_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::track::TargetRobot_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::track::TargetRobot_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::track::TargetRobot_<ContainerAllocator> >
{
  static const char* value()
  {
    return "c32c450075a6f53c168b8c460013cc14";
  }

  static const char* value(const ::track::TargetRobot_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xc32c450075a6f53cULL;
  static const uint64_t static_value2 = 0x168b8c460013cc14ULL;
};

template<class ContainerAllocator>
struct DataType< ::track::TargetRobot_<ContainerAllocator> >
{
  static const char* value()
  {
    return "track/TargetRobot";
  }

  static const char* value(const ::track::TargetRobot_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::track::TargetRobot_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint8 id\n\
uint8 color\n\
geometry_msgs/PoseStamped poseOrigin\n\
geometry_msgs/PoseStamped poseFcu\n\
================================================================================\n\
MSG: geometry_msgs/PoseStamped\n\
# A Pose with reference coordinate frame and timestamp\n\
Header header\n\
Pose pose\n\
\n\
================================================================================\n\
MSG: std_msgs/Header\n\
# Standard metadata for higher-level stamped data types.\n\
# This is generally used to communicate timestamped data \n\
# in a particular coordinate frame.\n\
# \n\
# sequence ID: consecutively increasing ID \n\
uint32 seq\n\
#Two-integer timestamp that is expressed as:\n\
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n\
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n\
# time-handling sugar is provided by the client library\n\
time stamp\n\
#Frame this data is associated with\n\
# 0: no frame\n\
# 1: global frame\n\
string frame_id\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Pose\n\
# A representation of pose in free space, composed of postion and orientation. \n\
Point position\n\
Quaternion orientation\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Point\n\
# This contains the position of a point in free space\n\
float64 x\n\
float64 y\n\
float64 z\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Quaternion\n\
# This represents an orientation in free space in quaternion form.\n\
\n\
float64 x\n\
float64 y\n\
float64 z\n\
float64 w\n\
";
  }

  static const char* value(const ::track::TargetRobot_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::track::TargetRobot_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.id);
      stream.next(m.color);
      stream.next(m.poseOrigin);
      stream.next(m.poseFcu);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct TargetRobot_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::track::TargetRobot_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::track::TargetRobot_<ContainerAllocator>& v)
  {
    s << indent << "id: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.id);
    s << indent << "color: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.color);
    s << indent << "poseOrigin: ";
    s << std::endl;
    Printer< ::geometry_msgs::PoseStamped_<ContainerAllocator> >::stream(s, indent + "  ", v.poseOrigin);
    s << indent << "poseFcu: ";
    s << std::endl;
    Printer< ::geometry_msgs::PoseStamped_<ContainerAllocator> >::stream(s, indent + "  ", v.poseFcu);
  }
};

} // namespace message_operations
} // namespace ros

#endif // TRACK_MESSAGE_TARGETROBOT_H
