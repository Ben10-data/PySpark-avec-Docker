#!/bin/bash

fichier=$1 
# Ici on a juste copier la commande docker pour allumer un container et executer son code.
# a rapeler le fichier que ce script va prendre en argument doit exister dans le app/

docker exec -it spark-master   spark-submit --master spark://spark-master:7077 /opt/spark/app/$fichier

