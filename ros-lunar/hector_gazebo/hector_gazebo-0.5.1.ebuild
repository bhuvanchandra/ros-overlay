# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="hector_gazebo provides packages related to to simulation of robots using ga[...]"
HOMEPAGE="http://ros.org/wiki/hector_gazebo"
SRC_URI="https://github.com/tu-darmstadt-ros-pkg-gbp/${PN}-release/archive/release/lunar/${PN}/0.5.1-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/hector_gazebo_plugins
	ros-lunar/hector_gazebo_thermal_camera
	ros-lunar/hector_gazebo_worlds
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
