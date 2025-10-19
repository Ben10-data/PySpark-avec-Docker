#!/bin/bash

fichier=$1 
echo "Hi, Mr ---------Ben----------------- "
echo "On entamme l'etape de l'execution de notre code"

# Ici on a juste copier la commande docker pour allumer un container et executer son code.

docker exec -it spark-master   spark-submit --master spark://spark-master:7077 /opt/spark/app/$fichier


