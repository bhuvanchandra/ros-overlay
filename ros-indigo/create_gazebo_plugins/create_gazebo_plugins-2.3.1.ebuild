# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Gazebo plugins for the iRobot Create"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/turtlebot-release/turtlebot_create_desktop-release/archive/release/indigo/create_gazebo_plugins/2.3.1-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/create_node
	ros-indigo/gazebo_ros
	ros-indigo/geometry_msgs
	ros-indigo/nav_msgs
	ros-indigo/roscpp
	ros-indigo/sensor_msgs
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

