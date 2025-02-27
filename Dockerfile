#Imagen utilizada
FROM node:current-slim

#Metadata custom
LABEL owner="Hector Montecinos"
LABEL type="node on mongo"

#Variable para directorio
ENV appdir=/usr/src/app

#actualizacion e instalacion de herramientas
RUN apt-get update && apt-get install git -y

#directorio donde se ejecutara git clone
WORKDIR ${appdir}

#Clonado de repositorio del proyecto
RUN git clone https://github.com/hiamp01/sample_node_02.git

#cambio a directorio del proyecto
WORKDIR ${appdir}/sample_node_02

#Copiado de variables de entorno
COPY .env .

#Compilacion
RUN npm install
RUN npm install dotenv

#Eliminacion de variables
#RUN rm .env

#Instruccion inicial
ENTRYPOINT [ "npm" ]

#opcion para instruccion inicial
CMD ["start"]

#puerto expuesto
EXPOSE 3000
