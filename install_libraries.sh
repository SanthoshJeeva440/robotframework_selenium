# install libraries through pip manager

echo "Installing requirements"
chmod 0755 resources/configuration/requirements.txt
python3 -m pip install pip -U
python3 -m pip install -r resources/configuration/requirements.txt
python3 -m pip install webdriver-manager
python3 -m pip install -e .
python3 -m pip cache purge