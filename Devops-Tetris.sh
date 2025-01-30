#!/bin/bash

# repo de mario bros
REPO="https://github.com/roxsross/bootcamp-devops-2023.git"
CARPETA="Devops-LandingSantex"
RUTA="/home/tomas-ubuntu/Escritorio/$CARPETA"
#=== actualizamos el sistema
apt-get update -y

# instalamos y verificamos git y apache2
if dkpg -l | grep -q git ;
then
 	echo "Git está instalado!"
else
	 apt install git -y
fi

if dkpg -l | grep -q apache2 ;
then
	echo "Apache2 está instalado!"
else
	echo "Instalando apache2"
	 apt install apache2 -y
	 sudo systemctl start apache2
	 sudo systemctl enable apache2
fi

#==================
# buscamos la carpeta en directorio escritorio
if [ -d "$RUTA" ] ;
then
	echo "El directorio está creado y clonado el REPO"
else
	echo "Empezando clon de repo"
	 # creamos la carpeta y clonamos dentro
	 mkdir -p "$RUTA"
	 git clone -b clase2-linux-bash  "$REPO" "$RUTA"
fi

echo "Instalando web!"
sleep 1

# llevamos el contenido de la landing hacia la web de apache
# revisar que el proyecto de github esté completo
sudo cp -r "$RUTA"/app-tetris/* /var/www/html
echo "Proceso completado!"

