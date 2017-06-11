# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "track: 2 messages, 0 services")

set(MSG_I_FLAGS "-Itrack:/home/olstob/track_ws/src/track/msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/indigo/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(track_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/olstob/track_ws/src/track/msg/TargetRobotArray.msg" NAME_WE)
add_custom_target(_track_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "track" "/home/olstob/track_ws/src/track/msg/TargetRobotArray.msg" "geometry_msgs/Point:track/TargetRobot:std_msgs/Header:geometry_msgs/Quaternion:geometry_msgs/PoseStamped:geometry_msgs/Pose"
)

get_filename_component(_filename "/home/olstob/track_ws/src/track/msg/TargetRobot.msg" NAME_WE)
add_custom_target(_track_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "track" "/home/olstob/track_ws/src/track/msg/TargetRobot.msg" "geometry_msgs/Point:geometry_msgs/PoseStamped:geometry_msgs/Quaternion:std_msgs/Header:geometry_msgs/Pose"
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(track
  "/home/olstob/track_ws/src/track/msg/TargetRobotArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/home/olstob/track_ws/src/track/msg/TargetRobot.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/track
)
_generate_msg_cpp(track
  "/home/olstob/track_ws/src/track/msg/TargetRobot.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/track
)

### Generating Services

### Generating Module File
_generate_module_cpp(track
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/track
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(track_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(track_generate_messages track_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/olstob/track_ws/src/track/msg/TargetRobotArray.msg" NAME_WE)
add_dependencies(track_generate_messages_cpp _track_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/olstob/track_ws/src/track/msg/TargetRobot.msg" NAME_WE)
add_dependencies(track_generate_messages_cpp _track_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(track_gencpp)
add_dependencies(track_gencpp track_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS track_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(track
  "/home/olstob/track_ws/src/track/msg/TargetRobotArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/home/olstob/track_ws/src/track/msg/TargetRobot.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/track
)
_generate_msg_lisp(track
  "/home/olstob/track_ws/src/track/msg/TargetRobot.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/track
)

### Generating Services

### Generating Module File
_generate_module_lisp(track
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/track
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(track_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(track_generate_messages track_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/olstob/track_ws/src/track/msg/TargetRobotArray.msg" NAME_WE)
add_dependencies(track_generate_messages_lisp _track_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/olstob/track_ws/src/track/msg/TargetRobot.msg" NAME_WE)
add_dependencies(track_generate_messages_lisp _track_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(track_genlisp)
add_dependencies(track_genlisp track_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS track_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(track
  "/home/olstob/track_ws/src/track/msg/TargetRobotArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/home/olstob/track_ws/src/track/msg/TargetRobot.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/track
)
_generate_msg_py(track
  "/home/olstob/track_ws/src/track/msg/TargetRobot.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/track
)

### Generating Services

### Generating Module File
_generate_module_py(track
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/track
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(track_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(track_generate_messages track_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/olstob/track_ws/src/track/msg/TargetRobotArray.msg" NAME_WE)
add_dependencies(track_generate_messages_py _track_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/olstob/track_ws/src/track/msg/TargetRobot.msg" NAME_WE)
add_dependencies(track_generate_messages_py _track_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(track_genpy)
add_dependencies(track_genpy track_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS track_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/track)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/track
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(track_generate_messages_cpp std_msgs_generate_messages_cpp)
add_dependencies(track_generate_messages_cpp geometry_msgs_generate_messages_cpp)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/track)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/track
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(track_generate_messages_lisp std_msgs_generate_messages_lisp)
add_dependencies(track_generate_messages_lisp geometry_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/track)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/track\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/track
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(track_generate_messages_py std_msgs_generate_messages_py)
add_dependencies(track_generate_messages_py geometry_msgs_generate_messages_py)
