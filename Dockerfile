#SO y imagen base
FROM python:3.12-slim
#Directorio de trabajo #git clone
WORKDIR /app
#copiar los archivos #git clone
COPY . /app
#Instalacion de dependencias
RUN pip install --no-cache-dir -r requirements.txt
#Puerto de la aplicacion
EXPOSE 5000
#comando para ejecutar la aplicacion
CMD ["python", "app.py"]