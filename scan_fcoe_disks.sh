#! /bin/sh
echo "Start to scan fcoe disks."
cp /etc/fcoe/cfg-ethx /etc/fcoe/cfg-p5p1
sed -i "s/^DCB_REQUIRED=\".*\"/DCB_REQUIRED=\"no\"/g" /etc/fcoe/cfg-p5p1
systemctl restart fcoe.service
echo "Scan fcoe disks finished."
