# DevOps Pipeline para Jenkins y GitHub

Este repositorio contiene un proyecto que integra un script en Bash y un pipeline de Jenkins para automatizar la clonación de un repositorio de GitHub, copiar archivos a un servidor web y levantar los servicios correspondientes.

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

```bash
sudo apt update
sudo apt install openjdk-17-jre
Paso 1: Script en Bash
Descripción del Script
El script en Bash realiza lo siguiente:

Verificación de la carpeta de trabajo: Verifica si ya existe la carpeta donde se clonará el repositorio.
Instalación de dependencias: Si la carpeta no existe, clona el repositorio desde GitHub.
Copiado de archivos al escritorio: Copia los archivos del repositorio clonado a la carpeta del escritorio de usuario.
Copiado de archivos al servidor web: Copia los archivos del repositorio a la carpeta /var/www/html para que puedan ser visualizados en el navegador a través de un servidor web.
Ejecución
Para ejecutar el script en Bash:

bash
Copiar
Editar
bash script.sh
Este script realizará todas las operaciones necesarias y devolverá el estado de cada una de ellas.

Paso 2: Pipeline de Jenkins
Descripción del Pipeline
El pipeline de Jenkins se encarga de los siguientes pasos:

Verificación de carpeta: Verifica si la carpeta ya existe para evitar la clonación innecesaria del repositorio.
Clonación del Repositorio: Si la carpeta no existe, clona el repositorio desde GitHub.
Copiado a Escritorio: Mueve los archivos clonados al escritorio de usuario.
Copiado al Servidor Web: Copia los archivos a la carpeta /var/www/html del servidor web.
Cómo Ejecutar el Pipeline
Asegúrate de tener Jenkins corriendo.
Crea un nuevo trabajo de tipo "Pipeline" en Jenkins.
Copia el contenido del Jenkinsfile en el área de definición del pipeline de Jenkins.
Ejecuta el pipeline y verifica el resultado en el panel de Jenkins.


