#!/bin/bash
#Script for Pre-Defined Information

read -r -p "Enter name of script: " script
read -r -p "Whats your fullname: " fname
read -r -p "Whats the description of this script: " description
echo "#!/bin/bash" > /home/jenkins/professional-scripts/${script}
echo
echo "###########################################" >> /home/jenkins/professional-scripts/${script}
echo
echo "#Author: " $fname >> /home/jenkins/professional-scripts/${script}
echo
echo "#Date: " $(date) >> /home/jenkins/professional-scripts/${script}
echo
echo "#Description: " $description >> /home/jenkins/professional-scripts/${script}
echo
echo "#Modified: " $(date) >> /home/jenkins/professional-scripts/${script}
echo
echo "###########################################" >> /home/jenkins/professional-scripts/${script}
echo
chmod a+x ${script}
vim ${script}
