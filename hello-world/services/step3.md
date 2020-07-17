## Déployer toute une application front, back, BDD

### Déployer un backend et l'exposer au frontend

Créez un deployment avec les caractéristiques suivantes :
* **deploy name** : cactus-back
* **image** : scauglog/hello-back:node-alpine
* **replicas** : 1
* **containerPort** : 8080
* **labels** : app=back

Exposez votre deployment pour que vos pods de frontend puissent y accéder :
* **type** : le plus adapté
* **port** : 8080
* **targetPort** : 8080
* **selector** : celui qui correspond à vos pods

>>Quel est l'état de votre pod ?<<
( ) running
(*) error backoff
( ) pending

En cas d'erreur comme ici, vous pouvez récupérer les logs d'un pod pour comprendre ce qu'il se passe avec la commande `kubectl logs deploy/cactus-back`{{execute}}

>>Qu'elle est le problème ?<<
( ) le backend n'arrive pas à contacter le frontend
( ) l'image docker n'existe pas
(*) le backend n'arrive pas à contacter redis

### Déployer une BDD et l'exposer au backend

Créez un deployment avec les caractéristiques suivantes :
* **deploy name** : redis
* **image** : redis:alpine3.12
* **replicas** : 1
* **containerPort** : 6379
* **labels** : app=bdd

Exposez votre deployment pour que vos pods de backend puissent y accéder puis redéployez votre deployment `cactus-back`.

>>Le problème du backend est-il réglé ?<<
( ) oui
(*) non
