# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="This package attempts to show the features of ROS python API step-by-step,\[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/ros_tutorials-release/archive/release/indigo/rospy_tutorials/0.5.5-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/message_runtime
	ros-indigo/rospy
	ros-indigo/std_msgs
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/message_generation
	ros-indigo/rostest
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
