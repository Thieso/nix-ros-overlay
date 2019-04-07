
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, message-generation, catkin, message-runtime }:
buildRosPackage {
  pname = "ros-melodic-smach-msgs";
  version = "2.0.1";

  src = fetchurl {
    url = https://github.com/ros-gbp/executive_smach-release/archive/release/melodic/smach_msgs/2.0.1-0.tar.gz;
    sha256 = "b42e7a31e5e9ee3fcec7388566ca1a78d2af773c2e0bc7428d4f2d62ed732bcf";
  };

  buildInputs = [ std-msgs message-generation ];
  propagatedBuildInputs = [ std-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''this package contains a set of messages that are used by the introspection
    interfaces for smach.'';
    #license = lib.licenses.BSD;
  };
}