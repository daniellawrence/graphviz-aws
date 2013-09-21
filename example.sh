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

cat <<EOF > example.dot

digraph G {
    web1 [$I_EC2];
    web2 [$I_EC2];
    app [$I_EC2];
    db  [$I_MYSQL];
    db_slave  [$I_MYSQL];
    s3  [$I_S3];
    gl  [$I_GLACIER];
    
    web1 -> app $OVER_HTTP
    web2 -> app $OVER_HTTP
    
    app -> db $OVER_MYSQL
    db  -> db_slave $OVER_MYSQL

    app -> s3 $OVER_API
    db  -> s3 $OVER_API

    s3  -> gl $OVER_API
}

EOF

cat example.dot| dot -Tpng > example.png

echo "Open example.png"

