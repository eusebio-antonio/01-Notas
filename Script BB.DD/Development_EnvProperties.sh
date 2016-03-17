#!/bin/bash

#Purpose = Set env.properties variables for Development Enviroment
#Created on 2015.04.14 
#Original Author: Miguel Marcos
#Version 1.2

clear
date

#START 

prj_path=`cat ~/test.properties |sed -n -e "s/[ ]*//g;/#/d;s/eclipse-path=//p" | tail -1`
cd $prj_path
echo "test.properties' path is: `pwd` "
echo ""

sed -i.bak s/^#parallel.threads/parallel.threads/g $prj_path/anfix-anfix/env.properties
sed -i.bak s/sql.is.prod=1/sql.is.prod=0/g $prj_path/anfix-anfix/env.properties
echo "$prj_path/anfix-anfix/env.properties :"
cat $prj_path/anfix-anfix/env.properties |grep parallel.threads
cat $prj_path/anfix-anfix/env.properties |grep sql.is.prod

sed -i.bak s/^#parallel.threads/parallel.threads/g $prj_path/anfix-bm/env.properties
sed -i.bak s/sql.is.prod=1/sql.is.prod=0/g $prj_path/anfix-bm/env.properties
echo "$prj_path/anfix-bm/env.properties :"
cat $prj_path/anfix-bm/env.properties |grep parallel.threads
cat $prj_path/anfix-bm/env.properties |grep sql.is.prod

sed -i.bak s/^#parallel.threads/parallel.threads/g $prj_path/anfix-cau/env.properties
echo "$prj_path/anfix-cau/env.properties :"
cat $prj_path/anfix-cau/env.properties |grep parallel.threads

sed -i.bak s/^#parallel.threads/parallel.threads/g $prj_path/anfix-conta/env.properties
sed -i.bak s/sql.is.prod=1/sql.is.prod=0/g $prj_path/anfix-conta/env.properties
echo "$prj_path/anfix-conta/env.properties :"
cat $prj_path/anfix-conta/env.properties |grep parallel.threads
cat $prj_path/anfix-conta/env.properties |grep sql.is.prod

sed -i.bak s/^#parallel.threads/parallel.threads/g $prj_path/anfix-contacts/env.properties
echo "$prj_path/anfix-contacts/env.properties :"
cat $prj_path/anfix-contacts/env.properties |grep parallel.threads

sed -i.bak s/^#parallel.threads/parallel.threads/g $prj_path/anfix-core-services/env.properties
echo "$prj_path/anfix-core-services/env.properties :"
cat $prj_path/anfix-core-services/env.properties |grep parallel.threads

sed -i.bak s/^#parallel.threads/parallel.threads/g $prj_path/anfix-feedback/env.properties
echo "$prj_path/anfix-feedback/env.properties :"
cat $prj_path/anfix-feedback/env.properties |grep parallel.threads

sed -i.bak s/^#parallel.threads/parallel.threads/g $prj_path/anfix-gestiona/env.properties
sed -i.bak s/sql.is.prod=1/sql.is.prod=0/g $prj_path/anfix-gestiona/env.properties
echo "$prj_path/anfix-gestiona/env.properties :"
cat $prj_path/anfix-gestiona/env.properties |grep parallel.threads
cat $prj_path/anfix-gestiona/env.properties |grep sql.is.prod

sed -i.bak s/^#parallel.threads/parallel.threads/g $prj_path/anfix-importer/anfix-importers/env.properties
echo "$prj_path/anfix-importer/anfix-importers/env.properties :"
cat $prj_path/anfix-importer/anfix-importers/env.properties |grep parallel.threads

sed -i.bak s/^#parallel.threads/parallel.threads/g $prj_path/anfix-learningcenter/env.properties
sed -i.bak s/sql.is.prod=1/sql.is.prod=0/g $prj_path/anfix-learningcenter/env.properties
echo "$prj_path/anfix-learningcenter/env.properties :"
cat $prj_path/anfix-learningcenter/env.properties |grep parallel.threads
cat $prj_path/anfix-learningcenter/env.properties |grep sql.is.prod

sed -i.bak s/^#parallel.threads/parallel.threads/g $prj_path/anfix-log/env.properties
echo "$prj_path/anfix-log/env.properties :"
cat $prj_path/anfix-log/env.properties |grep parallel.threads

sed -i.bak s/^#parallel.threads/parallel.threads/g $prj_path/anfix-mydocs/env.properties
echo "$prj_path/anfix-mydocs/env.properties :"
cat $prj_path/anfix-mydocs/env.properties |grep parallel.threads

sed -i.bak s/^#parallel.threads/parallel.threads/g $prj_path/anfix-os/env.properties
sed -i.bak s/sql.is.prod=1/sql.is.prod=0/g $prj_path/anfix-os/env.properties
sed -i.bak s/sendmail.enabled=true/sendmail.enabled=false/g $prj_path/anfix-os/env.properties

echo "$prj_path/anfix-os/env.properties :"
cat $prj_path/anfix-os/env.properties |grep parallel.threads
cat $prj_path/anfix-os/env.properties |grep sql.is.prod
cat $prj_path/anfix-os/env.properties |grep sendmail.
cat $prj_path/anfix-os/env.properties |grep mail.smtp.user
cat $prj_path/anfix-os/env.properties |grep mail.password


find . -name "env.properties.bak" -exec rm -rf {} +

#END
exit 0

########################################################################