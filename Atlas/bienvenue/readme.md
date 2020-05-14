# Action Bienvenue
Dans ce dossier, vous trouverez **3** Actions. Je vous conseille d'en mettre qu'une seule [la commande bienvenue](https://github.com/Merlode11/botscustomcommands/blob/master/Atlas/bienvenue/label-bienvenue.action) et de mettre le contenu des 2 autres dans le plugin Gatekeeper. 

## Première étape :

Importez la commande [la commande bienvenue](https://github.com/Merlode11/botscustomcommands/blob/master/Atlas/bienvenue/label-bienvenue.action) *(il faut la télécharger au préalable)*![alt](https://raw.githubusercontent.com/Merlode11/botscustomcommands/master/images/import.png). Une fois celle-ci importée, vous pouvez passer à l'étape suivante :

## Deuxième étape :

### Initialiser la variable quand un membre rejoint

Comme vous le savez peut-être, les actions d'Atlas sont limitées à 25 si on est pas patreon et donc que l'on est aboné au premium. Je vous conseille donc de mettre le message des 2 autres actions dans le plugin gatekeeper :

![alt](https://raw.githubusercontent.com/Merlode11/botscustomcommands/master/images/gatekeeper.png)

Par exemple, moi j'ai mis le premier contenu
```js
{if;{user.bot};==;false;{perset;lastmemberjoin;{user.mention}}}
```
dans `Direct message new member`

![alt](https://raw.githubusercontent.com/Merlode11/botscustomcommands/master/images/direct%20message%20new%20member.png)

mais rassurez vous ! ça ne va en aucun cas envoyer quelque chose en mp au nouvel autorisateur si vous ne l'avez pas configurer pour ! *si vous voulez être sûr, vous pouvez le mettre dans `join message`*

### Mettre un message si la personne a quitté le serveur

Toujours dans gatekeeper si vous le souhaitez, il vous suffit de mettre le message qui est dans l'action guildMemberRemove :
```js
{if;{perget;lastmemberjoin};==;{user.mention};{perset;lastmemberjoin;hasleave}}
```
dans le cadre `Leave Message`

![alt](https://raw.githubusercontent.com/Merlode11/botscustomcommands/master/images/leave%20message.png)

### Et voilà ! tout est configuré !

P-S : Si vous avez mis l'action dans un serveur avec une commauté déjà construite et que vous voulez que ça opère sans avoir un nouveau membre, vous pouvez faire la commande `a!eval {perset;lastmemberjoin;@user}{perget;lastmemberjoin}` *il faut que ça mentionne l'utilisateur en répondant* si l'utilisateur est encore sur le serveur, sinon, vous pouvez faire la commande `a!eval {perset;lastmemberjoin;hasleave}`

## Customisation

*soon*

## Fonctionnement

*soon*

