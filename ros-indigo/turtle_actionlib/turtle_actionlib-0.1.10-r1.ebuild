# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="turtle_actionlib demonstrates how to write an action server and client with the "
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/common_tutorials-release/archive/release/indigo/turtle_actionlib/0.1.10-1.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/actionlib
	ros-indigo/actionlib_msgs
	ros-indigo/angles
	ros-indigo/geometry_msgs
	ros-indigo/message_runtime
	ros-indigo/rosconsole
	ros-indigo/roscpp
	ros-indigo/std_msgs
	ros-indigo/turtlesim
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/message_generation
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

