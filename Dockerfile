FROM ubuntu:22.04

# Actualiza el sistema e instala Python
RUN apt-get update && apt-get install -y curl git python3 python3-pip python3.10-venv

# Establece el directorio de trabajo
WORKDIR /docker-ubuntu-python-pkgs

COPY . .

# Instala NVM
RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash \
    && export NVM_DIR="$HOME/.nvm" \
    && [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" \
    && [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# Instala Node.js 18
RUN export NVM_DIR="$HOME/.nvm" \
    && [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" \
    && [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" \
    && nvm install 18 \
    && nvm use 18 \
    && npm install -g npm


#RUN npm install -D husky lint-staged
#RUN npm install --save-dev @commitlint/cli @commitlint/config-conventional

#RUN npm install --save-dev @merkle-open/commitlint-conventional-changelog


#RUN npm set-script prepare 'husky install'
#RUN npm run prepare

#RUN npx husky add .husky/pre-commit "npx lint-staged"
#RUN npx husky add .husky/pre-push "npm run test"
#RUN npx husky add .husky/commit-msg "npx --no -- commitlint --edit ${1}"

# Define el comando por defecto que se ejecutará al iniciar el contenedor
CMD ["bash"]
