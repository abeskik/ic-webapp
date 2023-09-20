# Étape 1 : Utilisez une image de base Python 3.6 avec Alpine Linux
FROM python:3.6-alpine

# Étape 2 : Définissez le répertoire de travail dans le conteneur
WORKDIR /opt

# Étape 3 : Installez le module Flask à l'aide de pip
RUN pip install flask==1.1.2

# Étape 4 : Exposez le port 8080
EXPOSE 8080

# Étape 5 : Créez les variables d'environnement ODOO_URL et PGADMIN_URL
#ENV ODOO_URL="https://www.odoo.com:8080"
#ENV PGADMIN_URL="https://www.pgadmin.org/"

# Étape 6 : Copiez votre application Flask dans le conteneur (assurez-vous que app.py existe)
COPY . /opt

# Étape 7 : Définissez la commande d'entrée pour lancer l'application
ENTRYPOINT ["python", "app.py"]
