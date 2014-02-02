Virtualización completa: uso de máquinas virtuales
==================================================

1 Instalar los paquetes necesarios para usar KVM. Se pueden seguir estas instrucciones. Ya lo hicimos en el primer tema, pero volver a comprobar si nuestro sistema está preparado para ejecutarlo o hay que conformarse con la paravirtualización.

Para instalar las herramientas necesarias utilzamos el siguiente comando:
	sudo apt-get install qemu-kvm libvirt-bin

![](https://github.com/javiercollado/IV-JCL/blob/master/Tema%205%20Ejericicios/ImagenesT5/Instalando%20kvm.png?raw=true) 

2 
>1 Crear varias máquinas virtuales con algún sistema operativo libre, Linux o BSD. Si se quieren distribuciones que ocupen poco espacio con el objetivo principalmente de hacer pruebas se puede usar CoreOS (que sirve como soporte para Docker) GALPon Minino, hecha en Galicia para el mundo, Damn Small Linux, SliTaz (que cabe en 35 megas) y ttylinux (basado en línea de órdenes solo).

En mi caso voy a utilizar una imagen ya descargada de ubuntu minimal.  
Creamos disco: 

![](https://github.com/javiercollado/IV-JCL/blob/master/Tema%205%20Ejericicios/ImagenesT5/Ej2%20Creacion%20disco.png?raw=true)  
>2 Hacer un ejercicio equivalente usando otro hipervisor como Xen, VirtualBox o Parallels.

Voy a utilizar vmWare:

![](https://github.com/javiercollado/IV-JCL/blob/master/Tema%205%20Ejericicios/ImagenesT5/Instalando%20minimal.png?raw=true)

Instalando...

![](https://github.com/javiercollado/IV-JCL/blob/master/Tema%205%20Ejericicios/ImagenesT5/Instalando%20minimal2.png?raw=true)

