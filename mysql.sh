#!/bin/bash

if [ ! -f "/installed" ]  ; then
    ###### SysConfig defaults ##############
    /etc/init.d/mysql start
    
    # Waits mysql to start
    while ! mysqladmin ping --silent; do
        sleep 1
    done
    
    if [ -n "${MYSQL_PASSWORD}" ]; then
   		#mysqladmin -u root password "${MYSQL_PASSWORD}"
        echo "GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' IDENTIFIED BY \"${MYSQL_PASSWORD}\"" | mysql
    else
   		#mysqladmin -u root password "complemento"
        echo "GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' IDENTIFIED BY \"complemento\"" | mysql
    fi

    /etc/init.d/mysql stop
    # Waits mysql to stop
    while mysqladmin ping --silent; do
        sleep 1
    done
        
    touch "/installed"
fi

/usr/bin/supervisord
