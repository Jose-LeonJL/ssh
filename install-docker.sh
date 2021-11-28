# Creditos
# Jose-LeonJL
echo Instalando Docker...

#Si hay versiones antiguas de docker las eliminamos
sudo apt-get remove docker docker-engine docker.io containerd runc

#Instalacion de dependencias necesarias
sudo apt-get update
sudo apt-get install \ ca-certificates \ curl \ gnupg \ lsb-release

#Agregamos la clave de docker
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

#Seleccionamos el repositorio estable
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

#Instalamos docker
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io

echo Proceso terminado con exito, por favor verifique la Instalacion