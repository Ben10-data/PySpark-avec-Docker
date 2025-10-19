FROM spark:3.5.7-scala2.12-java17-ubuntu

USER root

# Ici on fait un RUN global 
# Au moment de la creation de l'image, toutes couches auront des versions convenables pour mieux fonctioner
RUN set -ex; \
    apt-get update; \
    apt-get install -y python3 python3-pip; \
    pip install --no-cache-dir jupyter findspark pyspark; \
    mkdir -p /home/spark && \ 
    chown -R spark:spark /home/spark && \
    rm -rf /var/lib/apt/lists/*


# Variables d'environnement, ici c'est l'endroit dans le container ou est stocker nos fichiers .ipynb 
# t'as capté 
ENV HOME=/home/spark
ENV PATH=$PATH:$HOME/.local/bin

USER spark
WORKDIR /home/spark

EXPOSE 8888

# On lance note jupyter à l'addresse suivant 
CMD ["jupyter", "lab", "--ip=0.0.0.0", "--port=8888", "--no-browser"]