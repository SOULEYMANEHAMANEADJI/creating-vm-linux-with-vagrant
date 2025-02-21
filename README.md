# README

Ce projet utilise **Vagrant** pour créer et gérer un environnement virtuel basé sur Ubuntu pour une application Tomcat.

## Structure du projet

- `.vagrant/` : Dossier de configuration Vagrant
- `tomcatwebapps/` : Emplacement des applications web Tomcat
- `Vagrantfile` : Fichier de configuration de Vagrant
- `install_tomcat.sh` : Script d'installation de Tomcat

## Configuration Vagrant

- **Box**: Ubuntu 22.04 LTS
- **Forwarding Ports**: 
  - Port 8080 (guest) ↔ Port 8087 (host)
- **Réseau Privé**: 
  - IP statique: 192.168.33.21
- **Synchronization**: 
  - Dossier `tomcatwebapps` synchronisé avec `/opt/tomcat/webapps`
- **Configuration VirtualBox**:
  - GUI désactivée
  - Mémoire: 2048 Mo

## Installation

1. Clonez le dépôt.
2. Exécutez les commandes suivantes dans le terminal :
   ```bash
   mkdir vagrant-create-vm-01
   cd vagrant-create-vm-01
   mkdir tomcatwebapps
   cd tomcatwebapps
   vagrant init
   ```

3. Lancez Vagrant :
   ```bash
   vagrant up
   ```

Pour plus de détails, consultez la documentation de [Vagrant](https://www.vagrantup.com/docs).
