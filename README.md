# F2B+UFW

![alt text](https://gitlab.com/hp3icc/f2b-ufw/-/raw/main/firewall.jpg)

## Getting started

F2B+UFW es un scrip que instala y configura de forma desatendida Fail2Ban y UFW , de forma que trabajen en conjunto, para prevenir ataques de fuerza bruta ssh u otro tipo de conexiones no deseadas en nuestros servidores o equipos .

F2B+UFW integra un menu de facil utilizacion , con las fumciones basicas requeridas de un firewall , agregar o eliminar puertos , ver listado de puertos abiertos , ver listado de ip restringidas 

si cuenta con los conocimientos avanzados de manejo y administracion de redes, y domina las aplicaciones Fail2ban y UFW, puede agregar reglas y funciones adicionales de forma manual sin utilizar el menu.

## instalacion

```
       apt update

       apt-get install sudo curl -y
       
       sh -c "$(curl -fsSL https://gitlab.com/hp3icc/emq-TE1/-/raw/main/install.sh)"
```

## configuracion

* Al finalizar la instalacion , se abrira el menu-ufw 

  asegurese de abrir todos los puertos que requiera antes de activar el firewall

* Puede agregar o remover puertos uno a uno , o agregar varios puertos separados por coma (,) 

* Al agregar o remover puertos , debe especificar el tipo de protocolo , precionando: T , U , B 
  
  Ejemplos :  TCP     = T
              UDP     = U
              TCP/UDP = B

## Funsionamiento

* Al activar el firewall, solo el puerto 22 TCP , estara abierto de forma predeterminada para recibir conexiones, debe agregar los puertos que requira queden abiertos para recibir conexiones , ejemplo 80,445 

* Al activar el firewall, la configuracion predeterminada es "Protection standard", todos los puertos de salida estan abiertos y todos los puertos de entrada estan cerrados, exepto el puerto 22 TCP , requerido para coneccion SSH

* Al cambiar a "Protection strong", todos los puertos de de entrada y salida quedaran cerrados, exepto el puerto 22 TCP entrada , 53,80,445 TCP salida , y los puertos que usted agregue al listado de puertos abiertos entrada.

* Puede activar o desactivar el firewall , y su configuracion personalizada de puertos abiertos o cerrados no se borrara .

## Auto Protecion 

* Al activar el Firewall, cualquier intento de conexion a su equipos, en cualquier puerto que no este abierto , el ip sera bloqueado por un minuto de forma automatica.

* Cualquier intento fallido de conexion ssh entrante al puerto 22 , el ip sera bloqueado de forma automatica por 1 hora

