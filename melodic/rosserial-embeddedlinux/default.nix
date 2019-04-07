
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rosserial-msgs, rosserial-client, rospy }:
buildRosPackage {
  pname = "ros-melodic-rosserial-embeddedlinux";
  version = "0.8.0";

  src = fetchurl {
    url = https://github.com/ros-gbp/rosserial-release/archive/release/melodic/rosserial_embeddedlinux/0.8.0-0.tar.gz;
    sha256 = "3834be581ac1ed6d71d9481ec8fdb9818be429b348ebcbfa1dd2311faf4bab1b";
  };

  buildInputs = [ rosserial-client ];
  propagatedBuildInputs = [ rosserial-msgs rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rosserial for embedded Linux enviroments'';
    #license = lib.licenses.BSD;
  };
}