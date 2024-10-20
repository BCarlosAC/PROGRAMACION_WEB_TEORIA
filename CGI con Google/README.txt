
1. Construir la imagen Docker:
   
   docker build -t buscadori .

2. Ejecutar el contenedor:

   docker run -d -p 8097:80 --name buscadorc buscadori
