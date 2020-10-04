#!/system/bin/sh

#
# Variables go here
# 
acc_ra=/proc/sys/net/ipv6/conf/wlan0/accept_ra
i6_all=/proc/sys/net/ipv6/conf/all/disable_ipv6
RED='\033[0;31m'
GRN='\033[0;32m'
NC='\033[0m'

echo " -[ ipv6 control ]-"

if [[ $1 == "d" ]]; then
	echo " -[ disable accept_ra ]-"
	echo 0 > $acc_ra
	echo " -[ disable ipv6 for all]-"
	echo 1 > $i6_all
fi

if [[ $1 == "e" ]]; then
	echo " -[ enable accept_ra ]-"
	echo 1 > $acc_ra
	echo " -[ enable ipv6 for all]-"
	echo 0 > $i6_all
fi

if [[ ! -z $1 ]]; then
	acc_ra_val=`cat $acc_ra`
	i6_all_val=`cat $i6_all`
	echo " -[ current ipv6 status is ]-"
	echo -n "   accept_ra is "
	if [[ `cat $acc_ra` == 0 ]]; then
		echo "${GRN}disabled${NC} (val:$acc_ra_val)"
	else
		echo "${RED}enabled${NC} (val:$acc_ra_val)"
	fi
	echo -n "   ipv6  all is "
	if [[ `cat $i6_all` == 0 ]]; then
		echo "${RED}enabled${NC} (val:$i6_all_val)"
	else
		echo "${GRN}disabled${NC} (val:$i6_all_val)"
	fi
else
	echo " -[ HELP ]-"
	echo " d - disable ipv6"
	echo " e - enable ipv6"
	echo " s - status"
fi