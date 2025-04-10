# projet-Data-SQL-Power-BI-d-un-site-d-Ecommerce

📦 Un projet d'analyse complète des données d'un site e-commerce à partir d'une base PostgreSQL, avec visualisation dans Power BI



**🧾 Description du jeu de données**

Le jeu de données utilisé dans ce projet simule l’activité d’un site e-commerce, en retraçant les différentes interactions des utilisateurs avec la plateforme. Il s'agit d'un historique d’événements (logs) capturés à chaque étape du parcours client : de la simple consultation de produit jusqu’à l’achat.
Chaque ligne du fichier CSV représente un événement utilisateur (type view, cart, ou purchase).
pour mieux comprendre le jeu de donnees vous pouvez telechargez le fichier **ecommerce_events_sample**



**📌 Intérêt du jeu de données**

Visualiser les performances commerciales (CA, nombre d’achats)

Identifier les navigateurs les plus rentables

Comparer les marques populaires

Analyser la répartition géographique des revenus

Suivre l’évolution de la conversion des utilisateurs



**Requêtes SQL utilisées pour l’analyse**

Pour mieux comprendre les comportements d’achat et de navigation des utilisateurs sur la plateforme e-commerce, plusieurs requêtes SQL ont été mises en place. Voici ce qu’elles permettent d’analyser


***Nombre d’événements par jour***

Cette requête permet de compter le nombre total d’événements (vues, ajouts au panier, achats) pour chaque journée. Elle regroupe les actions des utilisateurs par date (event_time) pour analyser l’évolution de l’activité sur le site e-commerce au fil du temps.


***Revenu total généré par catégorie***

Cette requête additionne les prix des produits achetés (event_type = 'purchase') en les regroupant par catégorie de produit (category_code). Elle permet de savoir quelles catégories de produits génèrent le plus de chiffre d’affaires.
pour voir d'autres analyses vous pouvez telechargez le fichier **ecommerce-sql**


**🔌 Connexion Power BI ↔ PostgreSQL**

pour la connexion power BI et postgreSQL nous avons ouvert


***Power BI Desktop*** puis
Cliquez sur "Obtenir les données" > PostgreSQL


***Entrez les infos suivantes***
Serveur : localhost
Base de données : ecommerce

Enfin j'ai Chargé les données de la table ecommerce_events pour Crée mes visualisations 📊


**📊 Présentation du tableau de bord Power BI**
![Aperçu du dashboard](Dashbor-ecommerce.PNG)

Ce tableau de bord présente une analyse complète de l'activité e-commerce à partir de données utilisateurs, événements de navigation et d'achat, regroupés via PostgreSQL et visualisés dans Power BI.


***🔍 Les indicateurs clés***

1. Total revenu
👉 Somme totale des revenus générés par les achats sur la période analysée :
62.25 M€

2. Total d'achats
👉 Nombre total de transactions réalisées (type purchase) :
333 K achats

3. Revenu moyen
👉 Moyenne du revenu généré par transaction :
1.25 M€

4. Taux de conversion
👉 Taux de transformation des visites en achats (achats / vues * 100) :
997 %
➡️ (Ce taux semble très élevé, à corriger si besoin dans les formules de mesure Power BI)



***📈 Visualisations détaillées***


1. Navigateur le plus utilisé pour les achats
Un histogramme comparant les navigateurs web (Chrome, Edge, Firefox, Safari) les plus utilisés lors des achats.

✅ Insight : tous les navigateurs ont une contribution similaire, ce qui montre une distribution homogène.

3. Marque de produit la plus achetée
Un graphique par marque (BrandA, BrandB, BrandC) indiquant la somme des ventes.

✅ Insight : les trois marques performent de manière assez équitable.

5. Revenu total par ville
Un diagramme circulaire montrant les villes ayant généré le plus de revenus (Paris, Lyon, Marseille, Nice, Toulouse).

✅ Insight : la répartition est équilibrée, chaque ville représente environ 20 % du chiffre d’affaires.



***💡 Ce que ce dashboard permet de faire***

Visualiser les performances commerciales (CA, nombre d’achats)

Identifier les navigateurs les plus rentables

Comparer les marques populaires

Analyser la répartition géographique des revenus

Suivre l’évolution de la conversion des utilisateurs



**🧰 Technologies utilisées**

PostgreSQL : stockage & analyse des données (SQL)

Power BI : visualisation des indicateurs clés

pgAdmin : interface de gestion de la base de données

GitHub : gestion de version & partage du projet



**🙋‍♂️ Auteur**

OUSSEIN IBRAHIM
📧 [oussein001@gmail.com]
🔗 www.linkedin.com/in/oussein-ibrahim-0a0883339

