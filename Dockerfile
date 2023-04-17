FROM ubuntu:22.04

# configurando git, github, ssh
COPY ~/.ssh/id_rsa /root/.ssh/id_rsa

RUN git config --global user.email "soypedroamaya@gmail.com"
RUN git config --global user.name "Pedro Amaya"
RUN eval "$(ssh-agent -s)" && \
    chmod 600 /root/.ssh/id_rsa && \
    ssh-add /root/.ssh/id_rsa && \
    ssh-keyscan github.com > /root/.ssh/known_hosts


# Actualiza el sistema e instala Python
RUN apt-get update && apt-get install -y curl git python3 python3-pip python3.10-venv

# Establece el directorio de trabajo
WORKDIR /app

# aqui bajamos el repositorio y nos metemos en la carpeta
# RUN git clone git@github.com:tu_usuario/tu_repositorio.git /app
RUN git clone git@github.com:soypedroamaya/docker-ubuntu-python-pkgs.git .

# aqui bajamos las dependencias de javascript
RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
RUN source ~/.bashrc
RUN nvm install --lts

RUN npm install -D husky lint-staged
RUN npm install --save-dev @commitlint/cli @commitlint/config-conventional

RUN npm set-script prepare 'husky install'
RUN npm run prepare

RUN npx husky add .husky/pre-commit "npx lint-staged"
RUN npx husky add .husky/pre-push "npm run test"
RUN npx husky add .husky/commit-msg "npx --no -- commitlint --edit ${1}"

# aqui bajamos las dependencias de python
RUN python3 -m venv experimental
RUN source experimental/bin/activate

RUN pip install flake8
RUN pip install pytest
RUN pip install black
RUN pip install -U commitizen
RUN pip install sphinx
RUN pip install sphinx-rtd-theme

# Empaqueta la librería
# RUN python3 setup.py sdist bdist_wheel

# Define el comando por defecto que se ejecutará al iniciar el contenedor
CMD ["bash"]
