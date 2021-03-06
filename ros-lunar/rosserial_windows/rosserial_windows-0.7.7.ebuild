# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="rosserial for Windows platforms."
HOMEPAGE="http://ros.org/wiki/rosserial_windows"
SRC_URI="https://github.com/ros-gbp/rosserial-release/archive/release/lunar/rosserial_windows/0.7.7-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/message_runtime
	ros-lunar/rospy
	ros-lunar/rosserial_client
	ros-lunar/rosserial_msgs
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
	ros-lunar/geometry_msgs
	ros-lunar/nav_msgs
	ros-lunar/sensor_msgs
	ros-lunar/std_msgs
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
