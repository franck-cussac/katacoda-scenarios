## NodePort

Créez un service pour exposer les pods de votre deployment `cactus-front` :
* **type** : NodePort
* **port** : 80
* **targetPort** : 80
* **selector** : celui qui correspond à vos pods

>>Comment le NodePort fonctionne ?<<
( ) le nodePort expose tous les pods sélectionnés présent sur un node sur le même port du node en question. Kubernetes en crée 1 par node.
(*) le nodePort expose le même port sur chaque node et redirige les flux qui entrent par ce port vers un clusterIP qui est généré en même temps que le NodePort.

Récupérez l'adresse IP d'un des nodes et essayez d'ouvrir votre cactus-front depuis un navigateur web.

## LoadBalancer

Créez un service pour exposer les pods de votre deployment `cactus-front` :
* **type** : LoadBalancer
* **port** : 80
* **targetPort** : 80
* **selector** : celui qui correspond à vos pods

>>Quelle est la différence avec le NodePort ?<<
[*] Je n'ai pas besoin de connaitre les IPs des nodes de mon cluster et le port du node exposé pour me connecter à mon front
[*] Si un noeud du cluster kube tombe en panne et doit être remplacé, ça reste transparent pour mon application
[ ] Je peux me passer d'écrire le port dans mon URL
