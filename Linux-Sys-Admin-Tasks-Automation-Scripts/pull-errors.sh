#! /bin/bash
# Author: Olivier
# Date: 24.04.20
# Description: this script will pull errors msgs from /var/log/msgs

grep -i error /home/jenkins/professional-scripts/messages > /home/jenkins/professional-scripts/output-error
