Tema 6: Gestión de infraestructuras virtuales
=============================================

>1 Instalar chef en la máquina virtual que vayamos a usar

Podemos usar este script: 

	#!/bin/bash
	#Author: Javier Collado
	#Description: Instalar chef. EJECUTAR COMO SUPERUSUARIO

	apt-get install ruby1.9.1 ruby1.9.1-dev rubygems
	gem install ohai chef

Como lo he instalado en 2 máquinas, en la segunda he usado: 
	
	sudo curl -L https://www.opscode.com/chef/install.sh | bash


>2 Crear una receta para instalar nginx, tu editor favorito y algún directorio y fichero que uses de forma habitual.
La receta es esta, que instalara nginx, geany y creara el directorio y el fichero.  

	package 'nginx'
	package 'geany'
	directory '/home/javier/web'
	file "/home/javier/index.html" do
		owner "javier"
		group "javier"
		mode 00544
		action :create
		content "HOLA MUNDO"
	end

Demostración de que se ejecuta correctamente:  
![]()  

>3 Escribir en YAML la siguiente estructura de datos en JSON
	
	

>4 Desplegar los fuentes de la aplicación de DAI o cualquier otra aplicación que se encuentre en un servidor git público en la máquina virtual Azure (o una máquina virtual local) usando ansible.

>5 
>>Desplegar la aplicación de DAI con todos los módulos necesarios usando un playbook de Ansible.

>>¿Ansible o Chef? ¿O cualquier otro que no hemos usado aquí?.

>6 Instalar una máquina virtual Debian usando Vagrant y conectar con ella.

>7 Crear un script para provisionar `nginx` o cualquier otro servidor web que pueda ser útil para alguna otra práctica

>8 Configurar tu máquina virtual usando vagrant con el provisionador ansible
