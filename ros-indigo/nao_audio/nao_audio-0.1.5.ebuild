# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Package for the Nao robot, providing access to NAOqi audio proxies"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/nao_interaction-release/archive/release/indigo/nao_audio/0.1.5-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/nao_interaction_msgs
	ros-indigo/roslaunch
	ros-indigo/rospy
	ros-indigo/std_msgs
	ros-indigo/std_srvs
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

