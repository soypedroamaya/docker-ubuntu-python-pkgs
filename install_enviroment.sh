
docker build -t img-docker-ubuntu-python-pkgs .

docker run --name cnt-docker-ubuntu-python-pkgs -it -v $(pwd):/docker-ubuntu-python-pkgs img-docker-ubuntu-python-pkgs bash

python3.10 -m venv exp

source exp/bin/activate

pip install --no-cache-dir -r requirements.txt

npm install