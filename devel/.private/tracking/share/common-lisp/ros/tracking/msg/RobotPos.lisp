; Auto-generated. Do not edit!


(cl:in-package tracking-msg)


;//! \htmlinclude RobotPos.msg.html

(cl:defclass <RobotPos> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (isNew
    :reader isNew
    :initarg :isNew
    :type cl:boolean
    :initform cl:nil)
   (id
    :reader id
    :initarg :id
    :type cl:fixnum
    :initform 0)
   (type
    :reader type
    :initarg :type
    :type cl:fixnum
    :initform 0)
   (point
    :reader point
    :initarg :point
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (orientation
    :reader orientation
    :initarg :orientation
    :type cl:float
    :initform 0.0))
)

(cl:defclass RobotPos (<RobotPos>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RobotPos>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RobotPos)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tracking-msg:<RobotPos> is deprecated: use tracking-msg:RobotPos instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <RobotPos>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tracking-msg:header-val is deprecated.  Use tracking-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'isNew-val :lambda-list '(m))
(cl:defmethod isNew-val ((m <RobotPos>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tracking-msg:isNew-val is deprecated.  Use tracking-msg:isNew instead.")
  (isNew m))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <RobotPos>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tracking-msg:id-val is deprecated.  Use tracking-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <RobotPos>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tracking-msg:type-val is deprecated.  Use tracking-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'point-val :lambda-list '(m))
(cl:defmethod point-val ((m <RobotPos>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tracking-msg:point-val is deprecated.  Use tracking-msg:point instead.")
  (point m))

(cl:ensure-generic-function 'orientation-val :lambda-list '(m))
(cl:defmethod orientation-val ((m <RobotPos>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tracking-msg:orientation-val is deprecated.  Use tracking-msg:orientation instead.")
  (orientation m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RobotPos>) ostream)
  "Serializes a message object of type '<RobotPos>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'isNew) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'point) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'orientation))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RobotPos>) istream)
  "Deserializes a message object of type '<RobotPos>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:slot-value msg 'isNew) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'point) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'orientation) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RobotPos>)))
  "Returns string type for a message object of type '<RobotPos>"
  "tracking/RobotPos")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotPos)))
  "Returns string type for a message object of type 'RobotPos"
  "tracking/RobotPos")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RobotPos>)))
  "Returns md5sum for a message object of type '<RobotPos>"
  "903f9f39a03e83f874744f15520d9b6a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RobotPos)))
  "Returns md5sum for a message object of type 'RobotPos"
  "903f9f39a03e83f874744f15520d9b6a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RobotPos>)))
  "Returns full string definition for message of type '<RobotPos>"
  (cl:format cl:nil "std_msgs/Header     header~%bool                isNew~%uint8               id~%uint8               type~%geometry_msgs/Point point~%float64 orientation~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RobotPos)))
  "Returns full string definition for message of type 'RobotPos"
  (cl:format cl:nil "std_msgs/Header     header~%bool                isNew~%uint8               id~%uint8               type~%geometry_msgs/Point point~%float64 orientation~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RobotPos>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'point))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RobotPos>))
  "Converts a ROS message object to a list"
  (cl:list 'RobotPos
    (cl:cons ':header (header msg))
    (cl:cons ':isNew (isNew msg))
    (cl:cons ':id (id msg))
    (cl:cons ':type (type msg))
    (cl:cons ':point (point msg))
    (cl:cons ':orientation (orientation msg))
))
