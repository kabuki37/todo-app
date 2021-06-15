#!/bin/bash

source ../.env

GRANT="GRANT ALL ON *.* TO '${DATABASE_USER_NAME}'@'%'"
echo $GRANT | mysql -u root -p $DATABASE_ROOT_PASSWORD
