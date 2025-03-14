# install libraries through pip manager

echo "Installing requirements"
chmod 0755 resources/configuration/requirements.txt
python -m pip install pip -U
python -m pip install -r resources/configuration/requirements.txt
python -m pip install webdriver-manager
python -m pip install -e .
python -m pip cache purge