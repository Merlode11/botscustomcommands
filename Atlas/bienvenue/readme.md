# Action Bienvenue
Dans ce dossier, vous trouverez **3** Actions. Je vous conseille d'en mettre qu'une seule [la commande bienvenue](https://github.com/Merlode11/botscustomcommands/blob/master/Atlas/bienvenue/label-bienvenue.action) et de mettre le contenu des 2 autres dans le plugin Gatekeeper. 

![alt](https://raw.githubusercontent.com/Merlode11/botscustomcommands/master/images/gatekeeper.png)

Par exemple, moi j'ai mis le premier contenu
```js{if;{user.bot};==;false;{perset;lastmemberjoin;{user.mention}}}```
dans `Direct message new member`

![alt](https://raw.githubusercontent.com/Merlode11/botscustomcommands/master/images/direct%20message%20new%20member.png)

mais rassurez vous ! ça ne va en aucun cas envoyer quelque chose en mp au nouvel autorisateur si vous ne l'avez pas configurer pour ! *si vous voulez être sûr, vous pouvez le mettre dans `join message`*
