[![N|Solid](https://complemento.net.br/wp-content/uploads/2018/02/150px-MySQL.svg_.png)]()

Mysql optimized for OTRS installations
========================

What's OTRS?
------------

OTRS is the world most popular Service Desk software, delivered by OTRS Group and a large open source community. You can check more information and all OTRS Group Services in their web site:
http://www.otrs.com

This Docker image is maintained by Complemento, a Brazilian company dedicate to delivery ITSM with open source software. We develop many Free and Enterprise AddOns for OTRS. You can check our website for more information:
http://www.complemento.net.br

About this Image
----------------
This image install an Mysql server with some special parameters needed by OTRS installations.

It does not setup OTRS Database, instead of that, it will only set a running Mysql Server with the needed parameters for OTRS Application.

It's designed to work with the following OTRS Image:
https://hub.docker.com/r/ligero/otrs/


How to Run it
-------------

 1. Install Docker. You can download Docker Community Edition from this link: 

	https://www.docker.com/community-edition#/download

 2. Run the following command:

`docker run -d --name otrs_db -v otrs_mysql:/var/lib/mysql ligero/otrs_mysql`

This will start the server with a default "complemento" password for the root user.

If you want to set you own password when creating the server, you can run the following command:

`docker run -d --name otrs_db -v otrs_mysql:/var/lib/mysql -e MYSQL_PASSWORD=myownpassword ligero/otrs_mysql`
