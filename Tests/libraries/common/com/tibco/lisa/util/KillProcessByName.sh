#!/bin/sh
#####################################################################
# @Date   : 2008/03/07
# @Author : Amy Guo
# @Verion : 1.0
# @Description: kill existing threads which will be started by lisa
#####################################################################
#-----------------------------------------------------------------
echo @1--kill tibcohost ...
#ps -ef |grep tibcohost |grep -v grep|awk '{print $2}'|xargs kill -9
ps -ef |grep tibcohost |grep -v grep|grep -v LISA_HOME|awk '{print $2}'|xargs kill -9
echo ' tibcohost is killed !'
#-----------------------------------------------------------------

