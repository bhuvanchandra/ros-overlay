# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="This package contains generic definitions of geometric shapes and bodies."
HOMEPAGE="http://ros.org/wiki/geometric_shapes"
SRC_URI="https://github.com/ros-gbp/${PN}-release/archive/release/indigo/${PN}/0.4.6-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-indigo/eigen_stl_containers
	ros-indigo/octomap
	ros-indigo/random_numbers
	ros-indigo/resource_retriever
	ros-indigo/shape_msgs
	ros-indigo/visualization_msgs
	test? ( ros-indigo/rosunit )
	media-libs/assimp
	dev-libs/boost
	dev-cpp/eigen
	dev-libs/console_bridge
	media-libs/qhull
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/cmake_modules
	media-libs/assimp
	virtual/pkgconfig
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

src_prepare() {
	cd ${P}
	EPATCH_SOURCE="${FILESDIR}" EPATCH_SUFFIX="patch" \
	EPATCH_FORCE="yes" epatch
	ros-cmake_src_prepare
}
