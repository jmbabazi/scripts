#!/bin/bash
echo "Starting VirtualBox VMs..."
# Where you want the output from the VirtualBox program to go
log_file=/home/scripts/virtualbox_startup.log
# An array, put all the server instance names in here
vm_names=(
"ButaroReporting"
"RwandaReporting" 
"MetaData Server"
"RwandaDev"
)
# Clear the old log file
rm -f $log_file
echo `date` > $log_file
# Go through and start up each named server
port_num=3389
for vm_name in "${vm_names[@]}"
do
 echo "" >> $log_file
 echo "Starting up $vm_name on port $port_num:" >> $log_file 2>&1
 # Give each Virtual Server its own remote desktop port number, starting with 3389
sudo -u root VBoxManage modifyvm "$vm_name" --vrdeport $port_num >> $log_file 2>&1
 port_num=`expr $port_num + 1`
 # Start the machine
sudo -u root VBoxManage startvm "$vm_name" --type headless >> $log_file 2>&1
done
