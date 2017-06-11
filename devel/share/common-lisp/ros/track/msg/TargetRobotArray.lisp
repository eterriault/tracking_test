; Auto-generated. Do not edit!


(cl:in-package track-msg)


;//! \htmlinclude TargetRobotArray.msg.html

(cl:defclass <TargetRobotArray> (roslisp-msg-protocol:ros-message)
  ((targets
    :reader targets
    :initarg :targets
    :type (cl:vector track-msg:TargetRobot)
   :initform (cl:make-array 0 :element-type 'track-msg:TargetRobot :initial-element (cl:make-instance 'track-msg:TargetRobot))))
)

(cl:defclass TargetRobotArray (<TargetRobotArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TargetRobotArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TargetRobotArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name track-msg:<TargetRobotArray> is deprecated: use track-msg:TargetRobotArray instead.")))

(cl:ensure-generic-function 'targets-val :lambda-list '(m))
(cl:defmethod targets-val ((m <TargetRobotArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader track-msg:targets-val is deprecated.  Use track-msg:targets instead.")
  (targets m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TargetRobotArray>) ostream)
  "Serializes a message object of type '<TargetRobotArray>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'targets))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'targets))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TargetRobotArray>) istream)
  "Deserializes a message object of type '<TargetRobotArray>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'targets) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'targets)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'track-msg:TargetRobot))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TargetRobotArray>)))
  "Returns string type for a message object of type '<TargetRobotArray>"
  "track/TargetRobotArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TargetRobotArray)))
  "Returns string type for a message object of type 'TargetRobotArray"
  "track/TargetRobotArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TargetRobotArray>)))
  "Returns md5sum for a message object of type '<TargetRobotArray>"
  "16223dc36cab66b58072ed5eb65e7309")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TargetRobotArray)))
  "Returns md5sum for a message object of type 'TargetRobotArray"
  "16223dc36cab66b58072ed5eb65e7309")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TargetRobotArray>)))
  "Returns full string definition for message of type '<TargetRobotArray>"
  (cl:format cl:nil "TargetRobot[] targets~%================================================================================~%MSG: track/TargetRobot~%uint8 id~%uint8 color~%geometry_msgs/PoseStamped poseOrigin~%geometry_msgs/PoseStamped poseFcu~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TargetRobotArray)))
  "Returns full string definition for message of type 'TargetRobotArray"
  (cl:format cl:nil "TargetRobot[] targets~%================================================================================~%MSG: track/TargetRobot~%uint8 id~%uint8 color~%geometry_msgs/PoseStamped poseOrigin~%geometry_msgs/PoseStamped poseFcu~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TargetRobotArray>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'targets) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TargetRobotArray>))
  "Converts a ROS message object to a list"
  (cl:list 'TargetRobotArray
    (cl:cons ':targets (targets msg))
))
