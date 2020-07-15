Bon essayons d'autres trucs en rapport avec kube :

## Première fois avec kubectl

Kube vient avec un **CLI** qui s'appelle **kubectl**. Voyons un peu ce que ça donne :

`kubectl version`{{execute}}

## Lister les pods

`kubectl get pods --namespace default`{{execute}}

>>Combien y a-t-il de pod actuellement qui tournent sur le cluster dans le namespace default ? <<
(*) 0
( ) 1
( ) 2
( ) 3
