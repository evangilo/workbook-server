workbook
========

Site de divulgação para prestadores de serviços

## Instalando

Instalar requisitos

	pip install -r requirements.txt

Criar o banco de dados

	python manage.py syncdb --all
	python manage.py migrate --fake

Popular o banco com todos os estados e cidades brasileiras

    python manage.py runscript popular_db
