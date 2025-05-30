# backend/entrypoint.sh
#!/bin/sh

# python
# Cria o ambiente virtual
# python3 -m venv env

# printf "Ambiente virtual criado\n"

# Ativa o ambiente virtual
# . /env/bin/activate

pip install djangorestframework
pip install mysqlclient
pip install django-cors-headers
# entra na pasta appCasamento

cd appCasamento
python manage.py makemigrations
python manage.py migrate

# Inicia o servidor de desenvolvimento Django
python manage.py runserver 0.0.0.0:8000