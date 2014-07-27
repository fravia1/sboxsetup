#!/bin/bash
user1=`USERNAME`
line1="@reboot ~/bin/rtcheck"
line2="*/10 * * * * ~/bin/rtcheck"
(crontab -u "$user1" -l; echo "$line1" ) | crontab -u "$user1" -
(crontab -u "$user1" -l; echo "$line2" ) | crontab -u "$user1" -
