# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="visp_hand2eye_calibration estimates the camera position with respect
     to its"
HOMEPAGE="http://wiki.ros.org/visp_hand2eye_calibration"
SRC_URI="https://github.com/lagadic/vision_visp-release/archive/release/indigo/visp_hand2eye_calibration/0.10.0-0.tar.gz"

LICENSE="GPLv2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-indigo/image_proc
    ros-indigo/message_generation
    ros-indigo/geometry_msgs
    ros-indigo/message_runtime
    ros-indigo/visp_bridge
    ros-indigo/roscpp
    ros-indigo/std_msgs
    ros-indigo/sensor_msgs
    ros-indigo/visp
"
DEPEND="${RDEPEND}
"

SLOT="0/0"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_PREFIX="opt/ros/indigo"

src_unpack() {
    wget -O ${P}.tar.gz ${SRC_URI}
    tar -xf ${P}.tar.gz
    rm -f ${P}.tar.gz
    mv *${P}* ${P}
}

src_configure() {
    mkdir ${WORKDIR}/src
    cp -R ${WORKDIR}/${P} ${WORKDIR}/src/${P}
}

src_compile() {
    echo ""
}

src_install() {
    cd ../../work
    source /${ROS_PREFIX}/setup.bash
    catkin_make_isolated --install --install-space="${D}/${ROS_PREFIX}" || die
    if [[ -e /${ROS_PREFIX}/setup.bash ]]; then
        rm -f ${D}/${ROS_PREFIX}/{.catkin,_setup_util.py,env.sh,setup.bash,setup.sh}
        rm -f ${D}/${ROS_PREFIX}/{setup.zsh,.rosinstall}
    fi
}