#!/bin/bash
# Tether cloak (script design to cloak the fact that your tethering)
OS=$(uname -s)
if [[ $OS == Darwin ]]; then
	echo 'Mac OS X Found setting TTL value using sysctl'
	echo 'You will be prompted for sudo credentials to access'
	current_ttl=$(sysctl net.inet.ip.ttl)
	echo "current TTL value is $current_ttl"
	echo "Would you like to change it?"
	echo "y or n?"
	if [[ -z $response ]]; then read response; fi
	if [ $response = "y" ]; then 
		sudo sysctl net.inet.ip.ttl=65
	else
		echo "Not modifying TTL value at the users request. Goodbye!"
		say "Nothing to see here"
		exit
	fi
else
	echo "Cannot find OS version"
fi
say "My work here is done"