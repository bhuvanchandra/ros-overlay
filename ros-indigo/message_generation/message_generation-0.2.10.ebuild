# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Package modeling the buildtime dependencies for generating language bindings of"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/message_generation-release/archive/release/indigo/message_generation/0.2.10-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/gencpp
	ros-indigo/genlisp
	ros-indigo/genmsg
	ros-indigo/genpy
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

