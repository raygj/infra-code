
#!/bin/bash
yum update -y
yum install httpd -y
service httpd start
chkconfig httpd on
aws s3 cp s3://wcdc00-00/ /var/www/html/ --recursive
curl http://169.254.169.254/latest/meta-data/public-ipv4 >/myip.html
>/myip.html

sudo mount -t nfs4 -o nfsvers=4.1,rsize=1048576,wsize=1048576,hard,timeo=600,retrans=2 fs-a6d16eef.efs.us-east-1.amazonaws.com:/ /var/www/html

#!/bin/bash
yum update -y
yum install httpd php php-mysql -y
echo "<?php phpinfo();?>" > /var/www/html/index.php
cd /var/www/html
wget https://s3/eu-west-2.amazonws/com/acloudguru-example/connect.php

cloudguru.cnhpxwgccimx.us-east-1.rds.amazonaws.com

#!/bin/bash
yum install httpd -y
yum update -y
service httpd start
chkconfig httpd on
echo "<html><h1>Woo-Hoo, WWW service is UP!</h1></html>" > /var/www/html/index.html