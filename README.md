graphviz-aws
============

AWS architecture the easy way


Example Output
--------------

![Example](https://raw.github.com/daniellawrence/graphviz-aws/master/example.png)


Example Code
------------


If we look at the example included in the base of this project (example.sh).
We use the following syntax to create the dot source

```sh
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

```

Install
-------

```sh
$ ./setup.sh 
Downloading AWS Simple Icons    [Skipped]
Unzipping AWS Simple Icons    [Skipped]
Deleting MACOSX files    [Skipped]
Installing librsvg2-bin    [Skipped]
Images convereted: 117
````

How it works
------------

* It will use the Simple AWS icons provided by AWS.
* Convert them all to by PNG (from SVG)
* Use graphviz/dot to generate the images

