#!/bin/bash

# Mise à jour des listes de paquets
apt-get update

# Installation de Java (dépendance de Tomcat)
apt-get install -y default-jdk

# Téléchargement de Tomcat (remplacez par la version souhaitée)
wget https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.78/bin/apache-tomcat-9.0.78.tar.gz

# Extraction de Tomcat
tar -xzf apache-tomcat-9.0.78.tar.gz

# Déplacement de Tomcat vers /opt
mv apache-tomcat-9.0.78 /opt/tomcat

# Ajout des permissions d'exécution au script de démarrage
chmod +x /opt/tomcat/bin/startup.sh

# Démarrage de Tomcat (peut être fait après le démarrage de la VM)
/opt/tomcat/bin/startup.sh