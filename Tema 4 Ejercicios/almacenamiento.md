Tema 4 : Almacenamiento
=======================

> Ejercicio 1

>>¿Cómo tienes instalado tu disco duro? ¿Usas particiones? ¿Volúmenes lógicos?

Depende del ordenador. Normalmente, en el que uso linux:
Partición1: Windows
Partición2: Datos
Partición3: Ubuntu
	Partición lógica para /
	Partición lógica para /home
	Partición lógica para swap

>>Si tienes acceso en tu escuela o facultad a un ordenador común para las prácticas, ¿qué almacenamiento físico utiliza?
	Sistema remoto de archivos.


> Ejercicio 2

>>Usar FUSE para acceder a recursos remotos como si fueran ficheros locales. Por ejemplo, sshfs para acceder a ficheros de una máquina virtual invitada o de la invitada al anfitrión.
![]()
Para esto vamos a utilizar alguna de las máquinas usadas anteriormente. En este caso una máquina creada con wmware que uso para otra asignatura. Esta también tiene ubuntu. Después de instalar en esta máquina fuse y demás cosas necesarias. Tambien lo tenemos que instalar en la maquina desde la que queremos hacer sshfs.

![](https://github.com/javiercollado/IV-JCL/blob/master/Tema%204%20Ejercicios/Imagenes%20Almacenamiento/Install%20fuse%20y%20mas%20En%20SCD.png?raw=true)

En la máquina a la que vamos a realizar el sshfs tenemos que añadir nuestro usuario al grupo de fuse.
![](https://github.com/javiercollado/IV-JCL/blob/master/Tema%204%20Ejercicios/Imagenes%20Almacenamiento/Add%20a%20grupo%20fuse.png?raw=true)

Tenemos que crear un directorio local en el que alojar el directorio remoto. En mi caso directorioRemotoSCD:
	mkdir directorioRemotoSCD

Entonces realizamos el sshfs:

![](https://github.com/javiercollado/IV-JCL/blob/master/Tema%204%20Ejercicios/Imagenes%20Almacenamiento/sshfs%20a%20scd.png?raw=true)

En la máquina remota tenemos estos archivos:
![](https://github.com/javiercollado/IV-JCL/blob/master/Tema%204%20Ejercicios/Imagenes%20Almacenamiento/contenido%20real.png?raw=true)

En la máquina desde la que realizamos el sshfs tenemos estos:

![](https://github.com/javiercollado/IV-JCL/blob/master/Tema%204%20Ejercicios/Imagenes%20Almacenamiento/contenido%20directorio%20remoto.png?raw=true)


>Ejercicio 3

>>Crear imágenes con estos formatos (y otros que se encuentren tales como VMDK) y manipularlas a base de montarlas o con cualquier otra utilidad que se encuentre.

Para realizar este ejercicio podemos usar las herramientas que nos ofrece qemu.
Las imagenes que tenemos que crear son raw, qcow2, vdi, vmdk.
Usaremos los siguientes comandos:  

	qemu-img create -f raw raw_img.img 5M  
	qemu-img create -f qcow2 qcow2_img.qcow2 5M  
	qemu-img create -f vdi vdi_img.vdi 5M  
	qemu-img create -f vmdk vmdk_img.vmdk 5M  

![](https://github.com/javiercollado/IV-JCL/blob/master/Tema%204%20Ejercicios/Imagenes%20Almacenamiento/Creacion%20imagenes%20almacenamiento.png?raw=true)

A continuación montamos la imagenes:

![](https://github.com/javiercollado/IV-JCL/blob/master/Tema%204%20Ejercicios/Imagenes%20Almacenamiento/montar1.png?raw=true)


>Ejercicio 4

>>Crear uno o varios sistema de ficheros en bucle usando un formato que no sea habitual (xfs o btrfs) y comparar las prestaciones de entrada/salida entre sí y entre ellos y el sistema de ficheros en el que se encuentra, para comprobar el overhead que se añade mediante este sistema


![](https://github.com/javiercollado/IV-JCL/blob/master/Tema%204%20Ejercicios/Imagenes%20Almacenamiento/ej4.png?raw=true)  

![](https://github.com/javiercollado/IV-JCL/blob/master/Tema%204%20Ejercicios/Imagenes%20Almacenamiento/Ej%204%202.png?raw=true)  

Y Ahora le damos formato, en mi caso, con el gestor de discos.
 

>Ejercicio 5

>>Instalar ceph en tu sistema operativo.

![](https://github.com/javiercollado/IV-JCL/blob/master/Tema%204%20Ejercicios/Imagenes%20Almacenamiento/Install%20ceph.png?raw=true)

>Ejercicio 6

>>Crear un dispositivo ceph usando BTRFS o XFS.

Creamos el directorio para almacenar la información de ceph como se especifica en los apuntes de clase.
![](https://github.com/javiercollado/IV-JCL/blob/master/Tema%204%20Ejercicios/Imagenes%20Almacenamiento/Ceph4.png?raw=true)

Creamos el archivo de configuración.
![](https://github.com/javiercollado/IV-JCL/blob/master/Tema%204%20Ejercicios/Imagenes%20Almacenamiento/Ceph%205%20configuracion%20ok.png?raw=true)

Creamos la imagen, montamos y formateamos:
![](https://github.com/javiercollado/IV-JCL/blob/master/Tema%204%20Ejercicios/Imagenes%20Almacenamiento/Ceph%203.png?raw=true)

Creamos el directorio:
![](https://github.com/javiercollado/IV-JCL/blob/master/Tema%204%20Ejercicios/Imagenes%20Almacenamiento/Ceph4.png?raw=true)

Arrancamos el demonio, y comprobamos:
![](https://github.com/javiercollado/IV-JCL/blob/master/Tema%204%20Ejercicios/Imagenes%20Almacenamiento/Ceph%20final.png?raw=true)


>Ejercicio 7

>>Almacenar objetos y ver la forma de almacenar directorios completos usando ceph y rados.

Creamos el objeto con rados:
	sudo rados mkpool piscina

Y ya podemos poner el objeto con put.

	sudo rados put -p piscina

>Ejercicio 8

>>Tras crear la cuenta de Azure, instalar las herramientas de línea de órdenes (Command line interface, cli) del mismo y configurarlas con la cuenta Azure correspondiente.

Para esto, lo que tenemos que hacer es instalar nodejs para poder instalar  azure-cli.

Una vez que hemos realizado esto tenemos que ejecutar el siguiente comando:  

	sudo npm install -g azure-cli

Despues de esto tenemos que configurar nuestra cuenta. Para esto primero ejecutamos: 
![]()

y despues usamos:	

	azure account import <Archivo descargado>

>Ejercicio 9

>>Crear varios contenedores en la cuenta usando la línea de órdenes para ficheros de diferente tipo y almacenar en ellos las imágenes en las que capturéis las pantallas donde se muestre lo que habéis hecho.

>Ejercicio 10

>>Desde un programa en Ruby o en algún otro lenguaje, listar los blobs que hay en un contenedor, crear un fichero con la lista de los mismos y subirla al propio contenedor. Muy meta todo.


