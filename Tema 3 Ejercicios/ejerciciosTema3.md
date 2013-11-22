EJERCICIOS TEMA 3
=================

##Ejercicio1  
>Instala LXC en tu versión de Linux favorita.  

Para esto tenemos varias opciones. En este caso lo he instalado desde los repositorios oficiales.

![Instalando LXC](https://github.com/javiercollado/IV-JCL/blob/master/Tema%203%20Ejercicios/Imagenes%20/instalando%20lxc.png?raw=true)  


##Ejercicio2  
>Comprobar qué interfaces puente se han creado y explicarlos.  

![ifconfig con maquina creada.](https://github.com/javiercollado/IV-JCL/blob/master/Tema%203%20Ejercicios/Imagenes%20/ifconfig%20anfitriona%20despues%20de%20crear%20una-caja.png?raw=true)  


##Ejercicio3  
>1.Crear y ejecutar un contenedor basado en Debian.  

![Comando crear caja ubuntu](https://github.com/javiercollado/IV-JCL/blob/master/Tema%203%20Ejercicios/Imagenes%20/Crear%20una-caja.png?raw=true)  

![Caja Ubuntu funcionando](https://github.com/javiercollado/IV-JCL/blob/master/Tema%203%20Ejercicios/Imagenes%20/una-caja%20ubuntu%20creada.png?raw=true)  

![Interfaces de red una-caja](https://github.com/javiercollado/IV-JCL/blob/master/Tema%203%20Ejercicios/Imagenes%20/una%20caja-%20interfaces%20de%20red.png?raw=true)  
  
>2.Crear y ejecutar un contenedor basado en otra distribución, tal como Fedora. Nota En general, crear un contenedor basado en tu distribución y otro basado en otra que no sea la tuya. 

Tras intentar la creacion mediante linea de comandos, presenta diferentes errores. Probamos cambiando la [plantilla](https://github.com/fajarnugraha/lxc/blob/master/templates/lxc-fedora.in) por la facilitada por el compañero Jose Colella .  
![Creacion Fedora Terminal](https://github.com/javiercollado/IV-JCL/blob/master/Tema%203%20Ejercicios/Imagenes%20/Crear%20fedora%20ejer3.png?raw=true)
Después de esto, y tras realizar el ejercicio 4.1, se realiza un intento más de creación desde la interfaz web. Completandose la tarea finalmente con éxito.    
![Creacion fedora interfaz web](https://github.com/javiercollado/IV-JCL/blob/master/Tema%203%20Ejercicios/Imagenes%20/Crear%20fedora%20interfaz.png?raw=true)  

![Funcionando Fedora](https://github.com/javiercollado/IV-JCL/blob/master/Tema%203%20Ejercicios/Imagenes%20/Fedora%20funcionando.png?raw=true)  

##Ejercicio4  
>1.Instalar lxc-webpanel y usarlo para arrancar, parar y visualizar las máquinas virtuales que se tengan instaladas.  

Para instalarlo usamos el siguiente comando: 
	wget http://lxc-webpanel.github.io/tools/install.sh -O - | bash  
![Instalando...](https://github.com/javiercollado/IV-JCL/blob/master/Tema%203%20Ejercicios/Imagenes%20/Instalando%20web-panel.png?raw=true)  

Despues de esto, podemos acceder a la interfaz web mediante la dirección http://nuestraIP:5000 . En mi caso httt://localhost:5000  

![Destro de la interfaz WEB](https://github.com/javiercollado/IV-JCL/blob/master/Tema%203%20Ejercicios/Imagenes%20/Dentro%20de%20LCX%20admin.png?raw=true)  

>2.Desde el panel restringir los recursos que pueden usar: CPU shares, CPUs que se pueden usar (en sistemas multinúcleo) o cantidad de memoria.  
Para esto usaremos cualquiera de los contenedores creados.   

![modificando](https://github.com/javiercollado/IV-JCL/blob/master/Tema%203%20Ejercicios/Imagenes%20/Modificando%20maquinas.png?raw=true)

##Ejercicio5.   
>Comparar las prestaciones de un servidor web en una jaula y el mismo servidor en un contenedor. Usar nginx.  

##Ejercicio6  
>1.Instalar juju.  

>2.Usándolo, instalar MySql en un táper.  
