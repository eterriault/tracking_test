; Auto-generated. Do not edit!


(cl:in-package track-msg)


;//! \htmlinclude TargetRobot.msg.html

(cl:defclass <TargetRobot> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:fixnum
    :initform 0)
   (color
    :reader color
    :initarg :color
    :type cl:fixnum
    :initform 0)
   (poseOrigin
    :reader poseOrigin
    :initarg :poseOrigin
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped))
   (poseFcu
    :reader poseFcu
    :initarg :poseFcu
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped)))
)

(cl:defclass TargetRobot (<TargetRobot>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TargetRobot>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TargetRobot)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name track-msg:<TargetRobot> is deprecated: use track-msg:TargetRobot instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <TargetRobot>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader track-msg:id-val is deprecated.  Use track-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'color-val :lambda-list '(m))
(cl:defmethod color-val ((m <TargetRobot>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader track-msg:color-val is deprecated.  Use track-msg:color instead.")
  (color m))

(cl:ensure-generic-function 'poseOrigin-val :lambda-list '(m))
(cl:defmethod poseOrigin-val ((m <TargetRobot>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader track-msg:poseOrigin-val is deprecated.  Use track-msg:poseOrigin instead.")
  (poseOrigin m))

(cl:ensure-generic-function 'poseFcu-val :lambda-list '(m))
(cl:defmethod poseFcu-val ((m <TargetRobot>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader track-msg:poseFcu-val is deprecated.  Use track-msg:poseFcu instead.")
  (poseFcu m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TargetRobot>) ostream)
  "Serializes a message object of type '<TargetRobot>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'color)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'poseOrigin) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'poseFcu) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TargetRobot>) istream)
  "Deserializes a message object of type '<TargetRobot>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'color)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'poseOrigin) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'poseFcu) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TargetRobot>)))
  "Returns string type for a message object of type '<TargetRobot>"
  "track/TargetRobot")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TargetRobot)))
  "Returns string type for a message object of type 'TargetRobot"
  "track/TargetRobot")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TargetRobot>)))
  "Returns md5sum for a message object of type '<TargetRobot>"
  "c32c450075a6f53c168b8c460013cc14")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TargetRobot)))
  "Returns md5sum for a message object of type 'TargetRobot"
  "c32c450075a6f53c168b8c460013cc14")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TargetRobot>)))
  "Returns full string definition for message of type '<TargetRobot>"
  (cl:format cl:nil "uint8 id~%uint8 color~%geometry_msgs/PoseStamped poseOrigin~%geometry_msgs/PoseStamped poseFcu~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TargetRobot)))
  "Returns full string definition for message of type 'TargetRobot"
  (cl:format cl:nil "uint8 id~%uint8 color~%geometry_msgs/PoseStamped poseOrigin~%geometry_msgs/PoseStamped poseFcu~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TargetRobot>))
  (cl:+ 0
     1
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'poseOrigin))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'poseFcu))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TargetRobot>))
  "Converts a ROS message object to a list"
  (cl:list 'TargetRobot
    (cl:cons ':id (id msg))
    (cl:cons ':color (color msg))
    (cl:cons ':poseOrigin (poseOrigin msg))
    (cl:cons ':poseFcu (poseFcu msg))
))
