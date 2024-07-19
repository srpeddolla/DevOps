#!/bin/bash

sudo mkdir -p /data/slapd/config
sudo mkdir /data/slapd/database
sudo chmod 777 -R /data/slapd
sudo chown -R $USER:docker /data/slapd

docker pull osixia/openldap:latest
docker pull osixia/phpldapadmin:latest

docker run --name openldap -p 389:389 -p 636:636 --hostname openldap --env LDAP_ORGANISATION="srpeddolla" --env LDAP_DOMAIN="srpeddolla.com" --env LDAP_ADMIN_PASSWORD="we1c0me123" --env LDAP_BASE_DN="dc=srpeddolla,dc=com" --volume /data/slapd/database:/var/lib/ldap --volume /data/slapd/config:/etc/ldap/slapd.d --detach osixia/openldap:latest

docker run --name phpldapadmin --hostname phpldapadmin --link openldap:ldap-host  --env PHPLDAPADMIN_LDAP_HOSTS=openldap --detach osixia/phpldapadmin:latest

docker inspect -f "{{ .NetworkSettings.IPAddress }}" phpldapadmin
