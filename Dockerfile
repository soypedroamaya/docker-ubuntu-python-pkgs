FROM ubuntu:22.04

# Actualiza el sistema e instala Python
RUN apt-get update && apt-get install -y curl git python3 python3-pip python3.10-venv
# RUN nodejs npm

# Instala las herramientas necesarias para empaquetar la librería

# RUN pip3 install --upgrade setuptools wheel twine

# Copia el código fuente de la librería en el contenedor
COPY . /app

# Establece el directorio de trabajo
WORKDIR /app

# Instala los requerimientos de la librería
# RUN pip3 install -r requirements.txt

# Empaqueta la librería
# RUN python3 setup.py sdist bdist_wheel


# Define el comando por defecto que se ejecutará al iniciar el contenedor
CMD ["bash"]
