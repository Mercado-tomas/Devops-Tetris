# DevOps Primeros Pasos en Automatización.!
# Pipeline para Jenkins y GitHub - Script's en Bash para realizar configuraciones previas!

Este repositorio contiene un proyecto proveniente de un bootcamp, en donde se utiliza el código de una landing para realizar el despliegue,
que integra dos script's en Bash y un pipeline de Jenkins para automatizar la clonación de un repositorio de GitHub, copiar archivos a un servidor web y levantar los servicios correspondientes.
Logrando de esa forma, automatizar el despliegue de la landing, 
primero se realizar por medio de bash,
luego se agrega un poco de dificultad por medio de jenkins.

## Descripción

El flujo de trabajo abarca dos partes principales:

1. **Script en Bash**: Este script verifica la existencia de carpetas y versiones necesarias, instala las dependencias si es necesario y mueve los archivos al servidor web.
2. **Pipeline de Jenkins**: Un pipeline que automatiza la clonación del repositorio, la copia de archivos al escritorio y al servidor web, y la notificación del estado de despliegue.

## Requisitos Previos

Antes de ejecutar los scripts, asegúrate de tener las siguientes herramientas instaladas en tu sistema:

- **Git**: Para clonar repositorios de GitHub.
- **Jenkins**: Servidor de integración continua para ejecutar el pipeline.
- **Servidor Web (Apache o Nginx)**: Para servir los archivos clonados en un servidor web local.
- **Java 17**: Jenkins requiere Java para su funcionamiento. Si no está instalado, puedes instalarlo ejecutando el siguiente comando en Ubuntu:



