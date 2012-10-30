#!/bin/bash
#
# $1: dir for miui overlay framework-res
# $2: dir for target framework-res
#

if [ `basename $1` = "layout" ];then
    echo "deal customize layout"
    cp overlay/framework-res/res/layout/* $2/layout/
fi

