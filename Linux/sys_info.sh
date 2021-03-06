##! /bin/bash
if [$UID -ne 0]
then
echo "Please run this script with sudo"
exit
fi

Output=$Home/research/sys_info.txt
ip=$(ip addr | grep inet | tail -2 | head -1)
execs=$(find /home -type f -perm 777 2> /dev/null)

if [! -d $HOME/research]
then
mkdir $HOME/research
fi

if [ -f $output]
then
 rm $output
fi

echo "A Quick System Audit Script">> $output
date >> $output
echo "">> $output
echo "Machine Type Infor" >> $output
echo -e "$MATCHTYPE \n" >> $output
echo -e "Uname Info:" >> $output
echo -e "$ip \n" >> $output
echo -e "Hostname: $(hostname -s) \n" >> $output
echo "DNS Servers:" >> $output
echo /etc/resolv.conf >> $output
echo  -e "\nMemory Infor:" >> $output
free >> $output
echo -e "\nCPU Info:" >> $output
lscpu |  grep CPU >> $output
echo -e "\nDisk Usage" >> $output
df -H | head -2 >> $output
echo -e "\nWho is logged in: \n $(who -a) \n" >> $output
echo -e "\nexec Files:" >> $output
echo $execs >> $output
echo -e "\nTop 10 Processes" >> $output
ps aux --sort %mem | awk {'peint $1, $2,$3,$4,$11'} | head >> $output
fi
