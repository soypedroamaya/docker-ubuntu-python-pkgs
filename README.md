# construir la imagen


npm init
git init

crear .gitignore y agregar "node_modules y experimental"

npm install -D husky lint-staged

creamos el archivo .lintstagedrc

npm set-script prepare 'husky install'

npm run prepare

npx husky add .husky/pre-commit "npx lint-staged"

python3 -m venv experimental
source experimental/bin/activate
pip install flake8

*******************
instalar nvm con

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash

source ~/.bashrc

nvm --version
nvm list
node --version
nvm install 14.2

*******************

git add .
git commit -am 'initial commit'