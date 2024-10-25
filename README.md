# Vagrantfile multi-macchina

## Descrizione

L'idea del progetto è quella di mettere in comunicazione due macchine virtuali, usando la box ubuntu/jammy64 

La prima VM, chiamata Web, sarà appunto un server web che si occuperà di mostrare le pagine caricate al suo interno ed il gestore adminer per il collegamento al database.

La seconda VM, chiamata Db, è la macchina che conterrà la suo interno il db.

## Utlizzo

1. git clone https://github.com/CortiEnea/Vagrant

2. Avviare le vm tramite: ``vagrant up ``

3. Il sito è disponibile a -->  ``192.168.56.10``