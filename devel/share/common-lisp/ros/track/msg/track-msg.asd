
(cl:in-package :asdf)

(defsystem "track-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "TargetRobotArray" :depends-on ("_package_TargetRobotArray"))
    (:file "_package_TargetRobotArray" :depends-on ("_package"))
    (:file "TargetRobot" :depends-on ("_package_TargetRobot"))
    (:file "_package_TargetRobot" :depends-on ("_package"))
  ))