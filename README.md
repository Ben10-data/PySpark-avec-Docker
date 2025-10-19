# 🚀 Projet Spark-Docker

## 📘 Description

Ce projet a pour objectif de **déployer un environnement Apache Spark** à l’aide de **Docker** et **Docker Compose**, afin de faciliter le développement, l’exécution et l’analyse de traitements distribués en **PySpark**.
Il contient des scripts Python, des notebooks d’analyse et des fichiers de configuration pour automatiser le déploiement et l’exécution d’un cluster Spark localement.


## 🧩 Structure du projet

```
SPARK-DOCKER/
│
├── .benv/                    # Environnement virtuel Python (optionnel)
│
├── app/
│   └── mon_script.py         # Script Python exécuté sur Spark
│
├── notebooks/
│   └── analyse_spark.ipynb   # Notebook Jupyter pour l’analyse des données via PySpark
│
├── docker-compose.yaml       # Configuration du cluster Spark (master + workers)
│
├── Dockerfile                # Image personnalisée pour Spark et dépendances Python
│
├── execution_hote.sh         # Script shell pour exécuter Spark depuis l’hôte (passez en argument votre fichier .py dans app)
│
└── README.md                 # Documentation du projet
```

---

## ⚙️ Fonctionnalités principales

* Déploiement automatique d’un cluster **Spark Master** et **Workers** via Docker Compose.
* Exécution de scripts **PySpark** (localement ou dans le conteneur).
* Lancement et visualisation d’analyses interactives via **Jupyter Notebook**.
* Script Shell (`execution_hote.sh`) pour exécuter des tâches Spark directement depuis la machine hôte.

---

## 🧱 Prérequis

Avant de commencer, assure-toi d’avoir installé :

* [Docker](https://docs.docker.com/get-docker/)
* [Docker Compose](https://docs.docker.com/compose/)
* (Optionnel) [Python 3.x](https://www.python.org/) et `pip` pour exécuter les scripts locaux

---

## 🚀 Démarrage rapide

### 1️⃣ Construire et lancer le cluster

```bash
docker-compose up --build
```

### 2️⃣ Accéder à l’interface

Une fois le cluster lancé, rends-toi sur :

```
http://localhost:8888
```

ou, selon ta configuration :

```
http://localhost:8080
```

pour accéder au **Jupyter Notebook** ou à l’interface **Spark Master**.
Tu peux y exécuter ton code directement.

---

### 🧯 Arrêter le cluster

```bash
docker-compose down -v
```

### 🔥 Relancer le cluster

```bash
docker-compose up -d
```

---

### ⚡ Exécuter un script `.py` présent dans `app/`

#### Donner les permissions d’exécution au script :

```bash
chmod +x execution_hote.sh
```

#### Lancer ton script :

```bash
./execution_hote.sh mon_script.py
```
Il est à noter que le fichier .py doit exister dans le dossier /app 
apres un `docker compose up -d`, on peut donner les droits d'execution le `chmod` et executer le fichier `./execution_hote.sh mon_du_fichier.py`.
---

Le cluster démarre avec :

* Un **Spark Master** accessible sur `http://localhost:8080`
* Un **Jupyter Notebook** (si configuré dans le Dockerfile)
* Des **Workers** prêts à exécuter les tâches PySpark

---

## 🧪 Utilisation du Notebook

Pour explorer les données :

1. Ouvre le notebook `notebooks/analyse_spark.ipynb`
2. Lance le serveur Jupyter à l’intérieur du conteneur (si configuré)
3. Accède à l’interface via ton navigateur


## 🧰 Personnalisation

* Modifie le **Dockerfile** pour ajouter des dépendances Python supplémentaires.
* Ajuste le **docker-compose.yaml** pour modifier le nombre de workers, les ports ou les volumes.
* Remplace `mon_script.py` par tout autre job Spark.

---

## 🧹 Nettoyage

Pour arrêter et supprimer les conteneurs et volumes :

```bash
docker-compose down -v
```

---

## 📰 À venir

Un **blog sur Medium** est en cours de rédaction pour expliquer le fonctionnement complet du projet.
📢 Abonne-toi à mon **LinkedIn** pour ne rien rater !
Merci pour ton intérêt 🙌

---

## 👨‍💻 Auteur

**Ben Tamou**
Projet d’expérimentation et de déploiement de Spark avec Docker
📅 *Octobre 2025*

