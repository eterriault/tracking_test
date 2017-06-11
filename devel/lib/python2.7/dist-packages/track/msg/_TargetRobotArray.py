# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from track/TargetRobotArray.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg
import track.msg
import std_msgs.msg

class TargetRobotArray(genpy.Message):
  _md5sum = "16223dc36cab66b58072ed5eb65e7309"
  _type = "track/TargetRobotArray"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """TargetRobot[] targets
================================================================================
MSG: track/TargetRobot
uint8 id
uint8 color
geometry_msgs/PoseStamped poseOrigin
geometry_msgs/PoseStamped poseFcu
================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of postion and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
"""
  __slots__ = ['targets']
  _slot_types = ['track/TargetRobot[]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       targets

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(TargetRobotArray, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.targets is None:
        self.targets = []
    else:
      self.targets = []

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      length = len(self.targets)
      buff.write(_struct_I.pack(length))
      for val1 in self.targets:
        _x = val1
        buff.write(_struct_2B.pack(_x.id, _x.color))
        _v1 = val1.poseOrigin
        _v2 = _v1.header
        buff.write(_struct_I.pack(_v2.seq))
        _v3 = _v2.stamp
        _x = _v3
        buff.write(_struct_2I.pack(_x.secs, _x.nsecs))
        _x = _v2.frame_id
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        if python3:
          buff.write(struct.pack('<I%sB'%length, length, *_x))
        else:
          buff.write(struct.pack('<I%ss'%length, length, _x))
        _v4 = _v1.pose
        _v5 = _v4.position
        _x = _v5
        buff.write(_struct_3d.pack(_x.x, _x.y, _x.z))
        _v6 = _v4.orientation
        _x = _v6
        buff.write(_struct_4d.pack(_x.x, _x.y, _x.z, _x.w))
        _v7 = val1.poseFcu
        _v8 = _v7.header
        buff.write(_struct_I.pack(_v8.seq))
        _v9 = _v8.stamp
        _x = _v9
        buff.write(_struct_2I.pack(_x.secs, _x.nsecs))
        _x = _v8.frame_id
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        if python3:
          buff.write(struct.pack('<I%sB'%length, length, *_x))
        else:
          buff.write(struct.pack('<I%ss'%length, length, _x))
        _v10 = _v7.pose
        _v11 = _v10.position
        _x = _v11
        buff.write(_struct_3d.pack(_x.x, _x.y, _x.z))
        _v12 = _v10.orientation
        _x = _v12
        buff.write(_struct_4d.pack(_x.x, _x.y, _x.z, _x.w))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.targets is None:
        self.targets = None
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.targets = []
      for i in range(0, length):
        val1 = track.msg.TargetRobot()
        _x = val1
        start = end
        end += 2
        (_x.id, _x.color,) = _struct_2B.unpack(str[start:end])
        _v13 = val1.poseOrigin
        _v14 = _v13.header
        start = end
        end += 4
        (_v14.seq,) = _struct_I.unpack(str[start:end])
        _v15 = _v14.stamp
        _x = _v15
        start = end
        end += 8
        (_x.secs, _x.nsecs,) = _struct_2I.unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v14.frame_id = str[start:end].decode('utf-8')
        else:
          _v14.frame_id = str[start:end]
        _v16 = _v13.pose
        _v17 = _v16.position
        _x = _v17
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _struct_3d.unpack(str[start:end])
        _v18 = _v16.orientation
        _x = _v18
        start = end
        end += 32
        (_x.x, _x.y, _x.z, _x.w,) = _struct_4d.unpack(str[start:end])
        _v19 = val1.poseFcu
        _v20 = _v19.header
        start = end
        end += 4
        (_v20.seq,) = _struct_I.unpack(str[start:end])
        _v21 = _v20.stamp
        _x = _v21
        start = end
        end += 8
        (_x.secs, _x.nsecs,) = _struct_2I.unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v20.frame_id = str[start:end].decode('utf-8')
        else:
          _v20.frame_id = str[start:end]
        _v22 = _v19.pose
        _v23 = _v22.position
        _x = _v23
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _struct_3d.unpack(str[start:end])
        _v24 = _v22.orientation
        _x = _v24
        start = end
        end += 32
        (_x.x, _x.y, _x.z, _x.w,) = _struct_4d.unpack(str[start:end])
        self.targets.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      length = len(self.targets)
      buff.write(_struct_I.pack(length))
      for val1 in self.targets:
        _x = val1
        buff.write(_struct_2B.pack(_x.id, _x.color))
        _v25 = val1.poseOrigin
        _v26 = _v25.header
        buff.write(_struct_I.pack(_v26.seq))
        _v27 = _v26.stamp
        _x = _v27
        buff.write(_struct_2I.pack(_x.secs, _x.nsecs))
        _x = _v26.frame_id
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        if python3:
          buff.write(struct.pack('<I%sB'%length, length, *_x))
        else:
          buff.write(struct.pack('<I%ss'%length, length, _x))
        _v28 = _v25.pose
        _v29 = _v28.position
        _x = _v29
        buff.write(_struct_3d.pack(_x.x, _x.y, _x.z))
        _v30 = _v28.orientation
        _x = _v30
        buff.write(_struct_4d.pack(_x.x, _x.y, _x.z, _x.w))
        _v31 = val1.poseFcu
        _v32 = _v31.header
        buff.write(_struct_I.pack(_v32.seq))
        _v33 = _v32.stamp
        _x = _v33
        buff.write(_struct_2I.pack(_x.secs, _x.nsecs))
        _x = _v32.frame_id
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        if python3:
          buff.write(struct.pack('<I%sB'%length, length, *_x))
        else:
          buff.write(struct.pack('<I%ss'%length, length, _x))
        _v34 = _v31.pose
        _v35 = _v34.position
        _x = _v35
        buff.write(_struct_3d.pack(_x.x, _x.y, _x.z))
        _v36 = _v34.orientation
        _x = _v36
        buff.write(_struct_4d.pack(_x.x, _x.y, _x.z, _x.w))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.targets is None:
        self.targets = None
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.targets = []
      for i in range(0, length):
        val1 = track.msg.TargetRobot()
        _x = val1
        start = end
        end += 2
        (_x.id, _x.color,) = _struct_2B.unpack(str[start:end])
        _v37 = val1.poseOrigin
        _v38 = _v37.header
        start = end
        end += 4
        (_v38.seq,) = _struct_I.unpack(str[start:end])
        _v39 = _v38.stamp
        _x = _v39
        start = end
        end += 8
        (_x.secs, _x.nsecs,) = _struct_2I.unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v38.frame_id = str[start:end].decode('utf-8')
        else:
          _v38.frame_id = str[start:end]
        _v40 = _v37.pose
        _v41 = _v40.position
        _x = _v41
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _struct_3d.unpack(str[start:end])
        _v42 = _v40.orientation
        _x = _v42
        start = end
        end += 32
        (_x.x, _x.y, _x.z, _x.w,) = _struct_4d.unpack(str[start:end])
        _v43 = val1.poseFcu
        _v44 = _v43.header
        start = end
        end += 4
        (_v44.seq,) = _struct_I.unpack(str[start:end])
        _v45 = _v44.stamp
        _x = _v45
        start = end
        end += 8
        (_x.secs, _x.nsecs,) = _struct_2I.unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v44.frame_id = str[start:end].decode('utf-8')
        else:
          _v44.frame_id = str[start:end]
        _v46 = _v43.pose
        _v47 = _v46.position
        _x = _v47
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _struct_3d.unpack(str[start:end])
        _v48 = _v46.orientation
        _x = _v48
        start = end
        end += 32
        (_x.x, _x.y, _x.z, _x.w,) = _struct_4d.unpack(str[start:end])
        self.targets.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
_struct_4d = struct.Struct("<4d")
_struct_2I = struct.Struct("<2I")
_struct_2B = struct.Struct("<2B")
_struct_3d = struct.Struct("<3d")
