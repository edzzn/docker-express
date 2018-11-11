# node:<version> Especificar la version
FROM node:10
# FROM node:10-alpine

# Crea el directorio de la app
WORKDIR /usr/src/app

# Instalar las dependencias de la app
# El `*` asegura que package.json y package-lock.json se copien
COPY package*.json ./
# La copia permite utilizar el cache de docker para que modules no se construya de nuevo cuando contruyamos nuestro contenedor

RUN npm install
# RUN npm install --only=production

# Copiamos todo el código de nuestra app
COPY . .

# Puerto por defecto de la applicación
EXPOSE 8080

# Definimos el comando para correr la app
CMD [ "npm", "start" ]
