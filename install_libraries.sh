# install libraries through pip mamanger

echo "Installing requirements"
chmod 0755 resources/configuration/requirements.txt
python3 -m pip install -r resources/configuration/requirements.txt
python3 -m pip install webdrivermanager