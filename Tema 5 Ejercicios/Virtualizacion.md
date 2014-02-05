Virtualización completa: uso de máquinas virtuales
==================================================

1 Instalar los paquetes necesarios para usar KVM. Se pueden seguir estas instrucciones. Ya lo hicimos en el primer tema, pero volver a comprobar si nuestro sistema está preparado para ejecutarlo o hay que conformarse con la paravirtualización.

Para instalar las herramientas necesarias utilzamos el siguiente comando:

	sudo apt-get install qemu-kvm libvirt-bin

![](https://github.com/javiercollado/IV-JCL/blob/master/Tema%205%20Ejericicios/ImagenesT5/Instalando%20kvm.png?raw=true) 

NOTA: En OSX lo instalo usando brew.

	brew install qemu
	brew install libvirt

2 
>1 Crear varias máquinas virtuales con algún sistema operativo libre, Linux o BSD. Si se quieren distribuciones que ocupen poco espacio con el objetivo principalmente de hacer pruebas se puede usar CoreOS (que sirve como soporte para Docker) GALPon Minino, hecha en Galicia para el mundo, Damn Small Linux, SliTaz (que cabe en 35 megas) y ttylinux (basado en línea de órdenes solo).

En mi caso voy a utilizar una imagen ya descargada de ubuntu minimal.  
Creamos disco: 

![](https://github.com/javiercollado/IV-JCL/blob/master/Tema%205%20Ejericicios/ImagenesT5/Ej2%20Creacion%20disco.png?raw=true)
Aunque finalmente creamos otro disco ejercicio2.img en qcow2 para instalar slitaz

![](https://github.com/javiercollado/IV-JCL/blob/master/Tema%205%20Ejercicios/ImagenesT5/2%20Instado%20en%20qemu.png?raw=true)
>2 Hacer un ejercicio equivalente usando otro hipervisor como Xen, VirtualBox o Parallels.

![](https://github.com/javiercollado/IV-JCL/blob/master/Tema%205%20Ejercicios/ImagenesT5/2%20Instalado%20en%20vmware.png?raw=true)

>4 Crear una máquina virtual Linux con 512 megas de RAM y entorno gráfico LXDE a la que se pueda acceder mediante VNC y ssh.  
![](https://github.com/javiercollado/IV-JCL/blob/master/Tema%205%20Ejercicios/ImagenesT5/4%20crear%20disco.png?raw=true)  

Despues de crear el disco (Esta creado en otra maquina, pero el proceso es igual en la máquina con ubuntu en la que finalmente se ha realizado el ejercicio), instalamos la maquina virtual normalmente. 
![](https://github.com/javiercollado/IV-JCL/blob/master/Tema%205%20Ejercicios/ImagenesT5/install%20lxde.png?raw=true)  
![](https://github.com/javiercollado/IV-JCL/blob/master/Tema%205%20Ejercicios/ImagenesT5/Instalando%20LXDE%20instalacion.png?raw=true)  
Una vez creada, tenemos que iniciarla con las opciones necesarias para conectar por vnc. Como vemos en la siguiente imagen.  

![](https://github.com/javiercollado/IV-JCL/blob/master/Tema%205%20Ejercicios/ImagenesT5/Encender%20para%20VNC.png?raw=true)    
A continuacion tenemos que ver cual es la IP de la máquina. ifconfig...  
![](https://github.com/javiercollado/IV-JCL/blob/master/Tema%205%20Ejercicios/ImagenesT5/ifconfig%20para%20ip%20lxde.png?raw=true)  
Y finalmente ya podemos conectarnos con vinagre:  
![](https://github.com/javiercollado/IV-JCL/blob/master/Tema%205%20Ejercicios/ImagenesT5/instalar%20vinagre.png?raw=true)  
![](https://github.com/javiercollado/IV-JCL/blob/master/Tema%205%20Ejercicios/ImagenesT5/Conectado%20desde%20vinagre.png?raw=true)


>5 Crear una máquina virtual ubuntu e instalar en ella un servidor nginx para poder acceder mediante web.
Creamos máquina:  
![](https://github.com/javiercollado/IV-JCL/blob/master/Tema%205%20Ejercicios/ImagenesT5/Crear%20VM%20azure.png?raw=true) 

Instalamos NGINX:   
![](https://github.com/javiercollado/IV-JCL/blob/master/Tema%205%20Ejercicios/ImagenesT5/Instalr%20nginx%20azure.png?raw=true)  

Añadimos endpoint:
![](https://github.com/javiercollado/IV-JCL/blob/master/Tema%205%20Ejercicios/ImagenesT5/A%C3%B1adir%20endpoint%20http.png?raw=true)

Entramos a la dirección:
![](https://github.com/javiercollado/IV-JCL/blob/master/Tema%205%20Ejercicios/ImagenesT5/funciona%20nginx.png?raw=true)  

>6 Usar juju para hacer el ejercicio anterior.

>7 Instalar una máquina virtual Ubuntu 12.04 para el hipervisor que tengas instalado.

Primero instalamos lo que necesitamos
	sudo apt-get install ubuntu-vm-builder kvm virt-manager
![](https://github.com/javiercollado/IV-JCL/blob/master/Tema%205%20Ejercicios/ImagenesT5/ejer%207%201.png?raw=true)  
Despues ejecutamos el siguiente comando para crear la máquina:
![](https://github.com/javiercollado/IV-JCL/blob/master/Tema%205%20Ejercicios/ImagenesT5/7%20.png?raw=true)  

Aqui podemos ver la máquina funcionando:

![](https://github.com/javiercollado/IV-JCL/blob/master/Tema%205%20Ejercicios/ImagenesT5/Funciona%207.png?raw=true)  
