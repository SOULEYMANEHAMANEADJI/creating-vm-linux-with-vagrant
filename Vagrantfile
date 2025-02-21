Vagrant.configure("2") do |config|
  config.vm.define "server" do |webserver|
    # Utilisation d'une box Ubuntu plus récente (22.04 LTS)
    webserver.vm.box = "ubuntu/jammy64"

    # Désactivation de la vérification des mises à jour de la box (facultatif)
    webserver.vm.box_check_update = false

    # Forwarding du port 8080 du guest vers le port 8087 de l'hôte
    webserver.vm.network "forwarded_port", guest: 8080, host: 8087

    # Adresse IP statique pour le réseau privé (assurez-vous qu'elle est libre)
    webserver.vm.network "private_network", type: "static", ip: "192.168.33.21"

    # Synchronisation du dossier webapps (assurez-vous que le dossier existe)
    webserver.vm.synced_folder "./tomcatwebapps", "/opt/tomcat/webapps"

    # Configuration de VirtualBox
    webserver.vm.provider "virtualbox" do |vb|
      vb.gui = false # Démarrage sans interface graphique
      vb.name = "webserver-tomcat"
      vb.memory = "2048" # 2 Go de RAM (plus de mémoire pour Tomcat)
    end

    # Provisionnement pour installer Tomcat
    webserver.vm.provision "shell", path: "install_tomcat.sh"
  end
end