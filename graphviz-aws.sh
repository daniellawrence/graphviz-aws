#!/bin/bash
####################################
# Example graphviz/dot with AWS Icons
####################################

BASE='./AWS_Simple_Icons_svg_eps'
I_CN_BASE="$BASE/Compute & Networking/SVG/Compute & Networking_"
I_DB_BASE="$BASE/Database/SVG/Database_Amazon"
I_SV_BASE="$BASE/App Services/SVG/App Services copy_Amazon"
I_MGMT_BASE="$BASE/Deployment & Management/SVG/Deployment & Management_AWS"

I_S3_BASE="$BASE/Storage & Content Delivery/SVG/Storage & Content Delivery_Amazon"
I_NA_BASE="$BASE/Non-Service Specific/SVG/Non-Service Specific copy_"

I_FORMAT='shape=none, image="'

I_INTERNET="${I_FORMAT}${I_NA_BASE}Internet.png\""
I_AWS="${I_FORMAT}${I_NA_BASE} AWS Cloud.png\""

I_EC2="${I_FORMAT}${I_CN_BASE}Amazon EC2 Instance.png\""
I_ELB="${I_FORMAT}${I_CN_BASE}Elastic Load Balancing.png\""
I_MYSQL="${I_FORMAT}${I_DB_BASE} RDS MySQL DB Instance.png\""
I_MYSQL_SLAVE="${I_FORMAT}${I_DB_BASE} RDS Instance Standby.png\""
I_S3="${I_FORMAT}${I_S3_BASE} S3.png\""
I_GLACIER="${I_FORMAT}${I_S3_BASE} Glacier.png\""
I_EBS_VOL="${I_FORMAT}${I_S3_BASE} EBS Volume.png\""
I_EBS_SNAP="${I_FORMAT}${I_S3_BASE} EBS Snapshot.png\""
I_EBS="${I_FORMAT}${I_S3_BASE} EBS.png\""
I_LAMBDA="${I_FORMAT}${BASE}/Compute & Networking/SVG/Lambda.png\""
I_SNS="${I_FORMAT}${I_SV_BASE} SNS.png\""
I_DC="${I_FORMAT}${I_NA_BASE}Corporate Data Center.png\""
I_DP="${I_FORMAT}${I_MGMT_BASE} Data Pipeline.png\""
I_USER="${I_FORMAT}${I_NA_BASE}Users.png\""


# Transports
OVER_HTTP='[color="blue"];'
OVER_MYSQL='[color="red"];'
OVER_API='[color="green"];'
OVER_SNS='[color="blue"];'
OVER_EVENT='[color="red"];'
