Bon essayons d'autres trucs en rapport avec kube :

## Première fois avec kubectl

Kube vient avec un **CLI** qui s'appelle **kubectl**. Voyons un peu ce que ça peut donner :

`kubectl --version`{{execute}}

## Lister les pods

Combien y a-t-il de pod actuellement qui tournent sur le cluster dans le namespace default ?

`kubectl get pods --namespace default`{{execute}}
