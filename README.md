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
pip install pytest
pip install black


deactivate
*******************
instalar nvm con

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash

source ~/.bashrc

nvm --version
nvm list
node --version
nvm install --lts

*******************

git add .
git commit -am 'initial commit'

creamos el archivo .flake8
y le ponemos este contenido adentro.

[flake8]
max-line-length = 80
exclude = .git,__pycache__,build,dist
ignore = E203, E266, E501, W503

npx husky add .husky/pre-push "npm run test"

luego modificamos nuestro package.json y quedaria asi:

"scripts": {
    "test": "pytest",
    "prepare": "husky install"
  },

agregamos un archivo sum_test.py

y ya podriamos correr los test asi:

npm run test

esto ejecutaria: pytest

instalamos dentro de nuestro enviroment:

vscode extension -> Conventional Commits de vivaxy

npm install --save-dev @commitlint/cli @commitlint/config-conventional

creamos el archivo commitlint.config.js

le ponemos esto adentro:

module.exports = {
    extends: ["@commitlint/config-conventional"],
}

npx husky add .husky/commit-msg "npx --no -- commitlint --edit ${1}"

ya luego, nos deberia de dejar hacer commit, pero unicamente si seguimos los conventional-commit standard