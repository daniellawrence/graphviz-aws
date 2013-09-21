#!/bin/bash
####################################
# Example graphviz/dot with AWS Icons
####################################
source "graphviz-aws.sh"

cat <<EOF > complex_example.dot

digraph G {
    internet [$I_INTERNET];
    aws  [$I_AWS];
    elb  [$I_ELB];
    web1 [$I_EC2];
    web2 [$I_EC2];
    app1 [$I_EC2];
    app2 [$I_EC2];
    db  [$I_MYSQL];
    db_slave  [$I_MYSQL];
    app1_ebs [$I_EBS_VOL];
    app1_ebs_snap [$I_EBS_SNAP];
    app2_ebs [$I_EBS_VOL];
    app2_ebs_snap [$I_EBS_SNAP];
    s3  [$I_S3];
    gl  [$I_GLACIER];
    
    subgraph cluster_a {
        web1 -> app1 $OVER_HTTP
        app1 -> db $OVER_MYSQL
        app1 -> app1_ebs;
        app1_ebs -> app1_ebs_snap;
        label = "AZ a"
    }

    subgraph cluster_b {
        web2 -> app2 $OVER_HTTP
        app2 -> db_slave $OVER_MYSQL
        db  -> db_slave $OVER_MYSQL
        app2 -> app2_ebs;
        app2_ebs -> app2_ebs_snap;
        label = "AZ b"
    }
    
    internet -> aws -> elb;
    elb -> web1;
    elb -> web2;

    db  -> s3 $OVER_API
    s3  -> gl $OVER_API
}

EOF

cat complex_example.dot| dot -Tpng > complex_example.png

echo "Open complex_example.png"

