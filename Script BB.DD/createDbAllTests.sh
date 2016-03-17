#!/bin/bash

PWD_DIR=`pwd`

mvn --version

cd $1

if [ -d anfix-os ]
then
    echo "Anfix OS installation"
    cd anfix-os
    mvn initialize -Psetup-database,dev
    cd -
fi

if [ -d anfix-core-services ]
then
    echo "Anfix Core Services installation"
    cd anfix-core-services
    mvn initialize -Psetup-database,dev
    cd -
fi

if [ -d anfix-mydocs ]
then
    echo "Anfix My documents installation"
    cd anfix-mydocs
    mvn initialize -Psetup-database,dev
    cd -
fi

if [ -d anfix-bm ]
then
    echo "Anfix BM installation"
    cd anfix-bm
    mvn initialize -Psetup-database,dev
    cd -
fi

if [ -d anfix-gestiona ]
then
    echo "Anfix Gestiona installation"
    cd anfix-gestiona
    mvn initialize -Psetup-database,dev
    cd -
fi

if [ -d anfix-conta ]
then
    echo "Anfix Conta installation"
    cd anfix-conta
    mvn initialize -Psetup-database,dev
    cd -
fi

if [ -d anfix-learningcenter ]
then
    echo "Anfix LearningCenter installation"
    cd anfix-learningcenter
    mvn initialize -Psetup-database,dev
    cd -
fi

if [ -d anfix-cau ]
then
    echo "Anfix Cau installation"
    cd anfix-cau
    mvn initialize -Psetup-database,dev
    cd -
fi

if [ -d anfix-anfix ]
then
    echo "Anfix installation"
    cd anfix-anfix
    mvn initialize -Psetup-database,dev
    cd -
fi

if [ -d anfix-kpi ]
then
   echo "Anfix KPI installation"
   cd anfix-kpi
   mvn initialize -Psetup-database,dev
   cd -
fi

if [ -d anfix-feedback ]
then
    echo "Anfix Feedback installation"
    cd anfix-feedback
    mvn initialize -Psetup-database,dev
    cd -
fi

if [ -d anfix-contacts ]
then
    echo "Anfix Contacts installation"
    cd anfix-contacts
    mvn initialize -Psetup-database,dev
    cd -
fi

cd $PWD_DIR
