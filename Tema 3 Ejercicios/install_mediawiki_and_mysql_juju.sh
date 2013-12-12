#!/bin/bash
#Author: Javier Collado López
#Description: Instalar MediaWiki y Mysql con su correspondiente relación. IMPORTANTE: Ejecutar script como superusuario.

juju switch local
juju bootstrap
juju deploy mediawiki
juju deploy mysql
juju add-relation mediawiki:slave mysql:db
juju expose mediawiki
juju status

echo "En 4 minutos se ejecutará de nuevo juju status"
sleep 4m
juju status