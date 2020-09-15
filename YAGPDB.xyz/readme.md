# Les customs commands d'YAGPDB
Le bot Discord YAGPDB.xyz propose un service de custom command très puissant avec de nombreuses fonctionnalitées. Il reste certes un peu limité dans certaines choses mais il a déjà plus de fonctionnalité qu'Atlas ou Carlbot par exemple.
Je me suis d'abord dirigé vers atlas et ses **Actions** car il est assez simple à utiliser mais tout de même assez puissant. C'est pour ça que je vous recommande d'utiliser Atlas en premier afin d'en savoir plus sur le monde des customs commands.

## Customs commandes proposées par la communauté
En effet, YAGPDB propose lui aussi un github pour ses customs commands. Il est assez complet mais le bémol *pour certains* c'est qu'il en en anglais. Cependant, je vous met let lien ici : https://github.com/Jo3-L/yagpdb-cc

## Mes customs commands
Dans le fichier YAGPDB de ce github, vous aurez accès à toutes les customs commandes que j'ai créé pour la communauté. Mais vous pouvez vous aussi me proposer des customs commands ! Ouvrez une pull request avec le code, ou alors venez sur mon serveur Discord pour me faire savoir que vous voulez en ajouter une !

## Ajouter les customs commands
Pour ajouter les customs commands d'YAGPDB, il vous faut d'abord aller sur son dashboard : https://yagpdb.xyz/manage
Il faura ensuite aller dans l'onglet custom commands (__Core__ **>** __Customs Commands__)
![customscommands](https://raw.githubusercontent.com/Merlode11/botscustomcommands/master/images/yagpdb-customscommands.png)
Ensuite, il faut en créer une nouvelle. Vous aurez à mettre un `Trigger Type`. *Il sera spécifié dans le readme de la custom command*
Vous avez

**`Command`**: With this trigger, the message has to start with the prefix for your server (- by default) followed by the trigger.

**`Starts with:`** When a message starts with your trigger.

**`Contains:`** When a message contains your trigger.

**`Regex:`** This trigger allows you to use a regex pattern. (Refer to the Regex page for help).

**`Exact match:`** When the entire message equals your trigger.

**`Reaction:`** CC is triggered by reactions.

**`Hourly interval`**: This will trigger after specified time given in hours. User can exclude certain hours and also weekdays. Channel must be selected for this trigger to work.

**`Minute interval`**: Like hourly interval, the specified time is just in minutes starting from 5 min as minimum.
