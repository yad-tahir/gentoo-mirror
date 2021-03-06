# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

ROS_REPO_URI="https://github.com/ros/metapackages"
KEYWORDS="~amd64"
ROS_SUBDIR=${PN}

inherit ros-catkin

DESCRIPTION="Metapackage to aggregate the packages required to use core ROS concepts"
LICENSE="BSD"
SLOT="0"
IUSE=""

RDEPEND="
	dev-util/catkin
	dev-ros/class_loader
	dev-ros/cmake_modules
	ros-meta/common_msgs
	dev-ros/gencpp
	dev-ros/geneus
	dev-ros/genlisp
	dev-ros/genmsg
	dev-ros/gennodejs
	dev-ros/genpy
	dev-ros/message_generation
	dev-ros/message_runtime
	dev-ros/pluginlib
	ros-meta/ros
	ros-meta/ros_comm
	dev-ros/rosbag_migration_rule
	dev-ros/rosconsole
	dev-ros/rosconsole_bridge
	ros-meta/roscpp_core
	dev-ros/rosgraph_msgs
	dev-ros/roslisp
	dev-ros/rospack
	dev-ros/std_msgs
	dev-ros/std_srvs
"
DEPEND="${RDEPEND}"
