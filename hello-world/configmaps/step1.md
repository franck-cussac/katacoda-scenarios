## Configurer l'environnement de son application

Comme vous l'avez remarqué, votre front, back et redis ne communiquent pas ensemble. C'est tout simplement parce que vous n'avez pas configuré votre application pour indiquer à votre front où aller chercher son back, et à votre back où aller chercher son redis.

On peut configurer l'environnement d'un conteneur à partir d'un **configmap**.

Créez un **configmap** avec les caractéristiques suivantes :
* **name** : back-env
TODO: rajouter les bonnes variables d'environnement à définir pour le back
