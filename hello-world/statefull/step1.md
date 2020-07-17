## Rendre redis statefull

Que se passe-t-il si votre pod redis tombe en panne et redémarre ? Vous perdez vos données car un pod est par définition stateless. Heureusement on trouve dans l'API kubernetes des ressources qui permettent de conserver le file system d'un pod.

Créez un **persistent volume** avec les caractéristiques suivantes :
TODO : compléter

Créez un **persistent volume claim** avec les caractéristiques suivantes :
TODO : compléter

Montez un volume entre votre pod redis et votre **persistent volume claim**.
