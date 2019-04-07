
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rosserial-msgs, rosserial-client }:
buildRosPackage {
  pname = "ros-melodic-rosserial-tivac";
  version = "0.8.0";

  src = fetchurl {
    url = https://github.com/ros-gbp/rosserial-release/archive/release/melodic/rosserial_tivac/0.8.0-0.tar.gz;
    sha256 = "3d4ce56cd9d2dd5e1d51afa86467890aa0d06c97b7342f7d469640eaa09c1372";
  };

  propagatedBuildInputs = [ rosserial-msgs rosserial-client ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rosserial for TivaC Launchpad evaluation boards.'';
    #license = lib.licenses.BSD;
  };
}