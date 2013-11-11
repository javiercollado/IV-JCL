Ejercicios Tema 2
=================

##Ejercicio 1

	Crear un espacio de nombres y montar en él una imagen ISO de un CD de forma que no se pueda leer más que desde él. Pista: en ServerFault nos explican como hacerlo, usando el dispositivo loopback

Para crear un espacio de nombres, vamos a utilizar el comando facilitado en el material de clase:

	sudo unshare -u /bin/bash

A continuacion tenemos que seguir los pasos para montar una unidad. Primero tendremos que crear un directorio en /mnt, ya que no debemos montar imagenes directamente sobre este directorio.
Después, montaremos la imagen.
![1](https://github.com/javiercollado/IV-JCL/blob/master/Tema%202%20Ejercicios/CapturasTema2/ej1-1.png?raw=true)
![2](https://github.com/javiercollado/IV-JCL/blob/master/Tema%202%20Ejercicios/CapturasTema2/ej1-2.png?raw=true)
![3](https://github.com/javiercollado/IV-JCL/blob/master/Tema%202%20Ejercicios/CapturasTema2/ej1-3.png?raw=true)

##Ejercicio 2

	Mostrar los puentes configurados en el sistema operativo.

Primero instalamos bridge-utils:

![Instalacion](https://github.com/javiercollado/IV-JCL/blob/master/Tema%202%20Ejercicios/CapturasTema2/ej2-a1.png?raw=true)  

![puentes de red](https://github.com/javiercollado/IV-JCL/blob/master/Tema%202%20Ejercicios/CapturasTema2/Ej2.png?raw=true)  

    Crear un interfaz virtual y asignarlo al interfaz de la tarjeta wifi, si se tiene, o del fijo, si no se tiene.  

![creacionInterfaz](https://github.com/javiercollado/IV-JCL/blob/master/Tema%202%20Ejercicios/CapturasTema2/Ej2-b.png?raw=true) 
Al hacer intentar asociar wlan0 nos muestra el siguiente error:   
![asociarError](https://github.com/javiercollado/IV-JCL/blob/master/Tema%202%20Ejercicios/CapturasTema2/Error%20asociar%20wlan0.png?raw=true)  
Asi que vamos a asociarlo a eth0
![asociar](https://github.com/javiercollado/IV-JCL/blob/master/Tema%202%20Ejercicios/CapturasTema2/Ej2-2.png?raw=true)  
![mostrarInterfacesII](https://github.com/javiercollado/IV-JCL/blob/master/Tema%202%20Ejercicios/CapturasTema2/Ej2%20final.png?raw=true)  

##Ejercicio 3

    Usar debootstrap (o herramienta similar en otra distro) para crear un sistema mínimo que se pueda ejecutar más adelante.

Esto está realizado en la [Práctica 2](https://github.com/javiercollado/practica2JCL/blob/master/practica2.md)

    Experimentar con la creación de un sistema Fedora dentro de Debian usando Rinse.  

Primero realizaremos la instalación de Rinse.

	sudo apt-get install rinse  

Esto instalará todas la librerias necesarias. Después de esto, podemos pasar a crear un sistema fedora dentro de nuestro Ubuntu.  
Ahora si utulizamos el comando rinse --help podemos encontrar las opciones que nos presenta rinse. Nosotros usaremos --directory para decir en que directorio instalar, --arch 'i386' para el tipo de arquitectura, y finalmente --distribution para decirle la distribución que queremos instalar.

	sudo rinse --distribution fedora-core-10 --directory ./fedoraRinse -arch 'i386'

![Crear máquina](https://github.com/javiercollado/IV-JCL/blob/master/Tema%202%20Ejercicios/CapturasTema2/fedoraRinse.png?raw=true)  
![OK](https://github.com/javiercollado/IV-JCL/blob/master/Tema%202%20Ejercicios/CapturasTema2/fedoraRinseOK.png?raw=true)  

##Ejercicio 4

	Instalar alguna sistema debianita y configurarlo para su uso. Trabajando desde terminal, probar a ejecutar alguna aplicación o instalar las herramientas necesarias para compilar una y ejecutarla.

Este ejercicio también esta realizado en la [Práctica 2](https://github.com/javiercollado/practica2JCL/blob/master/practica2.md) .  En este caso, hemos instalado apache2 y php. Y se muestra como lo hemos ejecutado.

##Ejercicio 5

	Instalar una jaula chroot para ejecutar el servidor web de altas prestaciones nginx.

##Ejercicio 6

	Crear una jaula y enjaular un usuario usando `jailkit`, que previamente se habrá tenido que instalar.