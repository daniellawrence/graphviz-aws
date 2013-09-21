#!/bin/bash
####################################
# Example graphviz/dot with AWS Icons
####################################

I_CN_BASE='./AWS_Simple_Icons_svg_eps/Compute & Networking/SVG/Compute & Networking copy_Amazon'
I_DB_BASE='./AWS_Simple_Icons_svg_eps/Database/SVG/Database copy_Amazon'
I_S3_BASE='./AWS_Simple_Icons_svg_eps/Storage & Content Delivery/SVG/Storage & Content Delivery_Amazon'

I_FORMAT='shape=none, image="'

I_EC2="${I_FORMAT}${I_CN_BASE} EC2 Instance.png\""
I_MYSQL="${I_FORMAT}${I_DB_BASE} RDS MySQL DB Instance.png\""
I_MYSQL_SLAVE="${I_FORMAT}${I_DB_BASE} RDS Instance Standby.png\""
I_S3="${I_FORMAT}${I_S3_BASE} S3.png\""
I_GLACIER="${I_FORMAT}${I_S3_BASE} Glacier.png\""

OVER_HTTP='[color="blue"];'
OVER_MYSQL='[color="red"];'
OVER_API='[color="green"];'
OVER_API='[color="green"];'

