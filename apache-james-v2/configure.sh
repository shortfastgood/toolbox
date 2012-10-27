#!/bin/bash
#
# name        : configure.sh
# description : Apache James toolbox configuration script example.
#
# 2010-01-21 daniele.denti@bluewin.ch 1.0 first version
# 2010-01-27 daniele.denti@bluewin.ch 1.1 cleanup

# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

SCRIPT_FOLDER=`dirname $0`

#
# MAIN
#

. ${SCRIPT_FOLDER}/conflib
. /lib/lsb/init-functions

# do not run as root
if [ "`whoami`" != "root" ]; then
 log_failure_msg "You have to be root to run this script ! `whoami`"
 exit 1
fi

apache_james_v2