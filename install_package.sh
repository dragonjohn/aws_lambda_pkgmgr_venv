virtualenv venv
source venv/bin/activate

venv/bin/pip3 install -r requirements.txt

mkdir workspace
cp -r venv/lib/python3.7/site-packages/* workspace
cp lambda_function.py workspace

deactivate
rm -rf venv

cd workspace
zip -r sae-es.zip . -x "*.git*" "*.sh" ".DS_Store" "*.zip" "*.yml" "__pycache__"


