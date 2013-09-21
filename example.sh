#!/bin/bash
####################################
# Example graphviz/dot with AWS Icons
####################################
source "graphviz-aws.sh"

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

