# Warn une personne si jamais elle met une réaction non voulue

Le bot supprimera automatiquement la réaction mise sur le message et avertira l'utilisateur en mp. Il est évidemment conseillé d'utiliser de base la modération d'YAGPDB mais pas obligatoire.

## L'initialisation des variables
Vous avez 2 variables à changer :
- **`{{$emoji := "🖕"}}`** : Cette variable sert à définir l'émoji qui ne doit pas être ajouté
> ⚠ Uniquement les émojis unicode sont disponibles actuellement !
- **`{{$warn_reason := "Les signes grossiers sur les réaction sont interdit !"}}`** C'est avec cette variable que la raison de l'avertissement sera définit

## Bypass des salons/rôles
Pour bypass des rôles ou des salons ou alors autoriser uniquement cette custom command à être utilisé par certains rôles ou dans certains salons, il faut aller juste en dessous
![](https://raw.githubusercontent.com/Merlode11/botscustomcommands/master/images/channels-roles_Config.png)
Il faut donc sélectionner l'option que vous souhaitez *(Ignoré ou Requis)* puis sur quel objet vous souhaitez l'avoir *(le rôle "Administrateur" par exemple)*