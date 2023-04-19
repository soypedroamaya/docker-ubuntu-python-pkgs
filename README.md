1. bajar el repositorio
      - git clone https://github.com/soypedroamaya/docker-ubuntu-python-pkgs.git    
2. nos metemos dentro del repo
      - cd docker-ubuntu-python-pkgs
3. construimos la imagen
      - docker build -t img-docker-ubuntu-python-pkgs .

4. construimos el contenedor basado en la imagen, con interaccion en la terminal y pegada a nuestro directorio local 
      - docker run --name cnt-docker-ubuntu-python-pkgs -it -v $(pwd):/docker-ubuntu-python-pkgs img-docker-ubuntu-python-pkgs bash

4.1 nos conectamos desde visual studio y con la extension "dev containers" a nuestro contenedor corriendo

5. nos movemos a la rama que necesitemos:
    - git checkout exp

6. creamos el entorno virtual de la rama
    - python3.10 -m venv exp

7. activamos el entorno virtual anterior
    - source exp/bin/activate

8. bajamos las librerias necesarias y que estan segun la rama
    - pip install --no-cache-dir -r requirements.txt

9. creamos las librerias externas
    - npm install

----------------------------------
docker stop cnt-docker-ubuntu-python-pkgs
docker rm cnt-docker-ubuntu-python-pkgs
docker rmi img-docker-ubuntu-python-pkgs

docker system prune --all --force --volumes
