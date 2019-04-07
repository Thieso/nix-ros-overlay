
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, grid-map-core, filters, catkin, grid-map-ros, grid-map-msgs }:
buildRosPackage {
  pname = "ros-melodic-grid-map-filters";
  version = "1.6.1";

  src = fetchurl {
    url = https://github.com/anybotics/grid_map-release/archive/release/melodic/grid_map_filters/1.6.1-0.tar.gz;
    sha256 = "b320f6311be2c0c2ad860f9a14b1a0a3bc90e91b3064c33d4736aa7fd3b6188c";
  };

  buildInputs = [ grid-map-core grid-map-msgs grid-map-ros filters ];
  propagatedBuildInputs = [ grid-map-core grid-map-msgs grid-map-ros filters ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Processing grid maps as a sequence of ROS filters.'';
    #license = lib.licenses.BSD;
  };
}