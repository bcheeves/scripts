#$ cat FlushConn.sh 
#!/bin/bash
sudo killall -term mDNSResponder && echo "Cache Flushed" && say Cache flushed
sleep 2
ifconfig lo0 down
sleep 1
ifconfig en0 down
sleep 1
ifconfig en1 down
sleep 1
ifconfig en2 down
sleep 1
ifconfig en3 down
sleep 1
ifconfig en4 down
sleep 1
ifconfig en5 down
sleep 1
ifconfig en6 down
sleep 1
ifconfig utun0 down
sleep 1
ifconfig utun1 down
sleep 1
ifconfig utun2 down
sleep 1
ifconfig anpi2 down
sleep 1
ifconfig anpi1 down 
sleep 1
ifconfig bridge0 down
sleep 1
ifconfig ap1 down
sleep 5
ifconfig en0 up && echo "Interface en0 bounced!"
sleep 5
ifconfig en1 up && echo "Interface en1 bounced!"
sleep 2
ifconfig en2 up && echo "Interface en2 bounced!"
sleep 2
ifconfig en3 up && echo "Interface en3 bounced!"
sleep 1
ifconfig en4 up && echo "Interface en4 bounced!"
sleep 1
ifconfig en5 up && echo "Interface en5 bounced!"
sleep 1
ifconfig en6 up && echo "Interface en6 bounced!"
sleep 2
ifconfig utun0 up && echo "Interface utun0 bounced!"
sleep 1 
ifconfig lo0 up && echo "Interface en0 bounced!"
sleep 1
ifconfig utun1 up && echo "Interface utun1 bounced!"
sleep 1
ifconfig utun2 up && echo "Interface utun2 bounced!"
sleep 1
ifconfig anpi2 up && echo "Interface anpi2 bounced!"
sleep 1
ifconfig anpi1 up && echo "Interface anpi1 bounced!"
sleep 2
ifconfig bridge0 up && echo "Interface bridge0 bounced!"
sleep 2
ifconfig ap1 up && echo "Interface ap1 bounced!"
sleep 1
say Interfaces bounced
