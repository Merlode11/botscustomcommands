# Les suggestions
Beaucoup de bots proposent les suggestions ! Mais très peu proposent de faire via un simple message que l'on envoie dans le salon ! Atlas le propose, certes, mais c'est uniquement pour les premiums. Malgrès que c'est plus avancé et sans doute bien meilleur mais comme c'est en premium, j'ai fait un petit script pour ça. Il ne propose pas encore de beaucoup de fonctionnalité mais ça va venir à force des mises à jours du bot

## Comment il fonctionne ?
Il suffit de l'importer après l'avoir [téléchargé](https://github.com/Merlode11/botscustomcommands/blob/master/Atlas/download.md), comme toutes les actions porposées ici. ![alt](https://raw.githubusercontent.com/Merlode11/botscustomcommands/master/images/import.png) Ensuite, il faut sélectionner le salon où il faudra envoyer notre suggestion. Sélectionnez le dans `trigger content`. Ensuite, je vous conseille de mettre des rôles qui peuvent répondre au suggestions. Comme les administrateurs par exemple. Pour cela, il suffit de mettre ces rôles dans les **role blacklist**. Si vous l'avez fait, je vous conseille fortement de vérifier que l'option **Quiet** est activée. Ensuite, tout est bon ! **Enjoy** !

## Le customiser
### Customiser l'embed
Pour changer l'embed et en mettre un personnalisé. Pour cela, je vous conseille d'aller sur [l'embed builder d'Alas](https://atlasbot.xyz/embed-builder). Vous pouvez vous aider de cette vidéo : https://youtu.be/DvFsysP2PTI pour le construire. Je vous conseille **fortement** de mettre `{message.content}` dans la description au cas où la personne fait plus de 1024 caractères, la limite pour les fields. Ensuite, je vous invite à voir tous les tags à cette adresse : [https://atlasbot.xyz/documentation/](https://atlasbot.xyz/documentation/user.avatarURL). Vous pouvez les mettres dans toutes les entrées. Ensuite, vous copiez ce qu'il y a dans ***TAG*** et vous remplacez tout le `{a!ae}` soit :
```js
{a!ae;--footer="UserID : {user.id}";--title=\"SUGGESTION\";--description=\"{message.content}\";--color=\"{user.color;true}\";--thumbnail=\"{user.avatarURL}\";--timestamp=\"true\";--name=\"{user.username}\"}
```
Et voilà ! Votre propre embed vient d'être mis !

### Customiser les réactions
Pour mettre des réactions personnelles ou encore d'autres basique de Discord, il vous suffit de prendre leur id. Comment avoir l'id d'un émoji ? C'est simple, il faut mettre un **\\** devant un émoji comme `\:emoji`. Il faut ensuite copier la sortie une fois le message envoyé et de le mettre dans le tag `{message.react}` Je vous consille de respecter l'ordre sinon ça donnera ça :

![alt](https://raw.githubusercontent.com/Merlode11/botscustomcommands/master/images/broken-reaction.png)

Et voilà ! Je vous ai tout dis ! Il suffira maintenant que la personne poste un message dans le salon dédié et voilà le résultat !

![alt](https://raw.githubusercontent.com/Merlode11/botscustomcommands/master/images/suggestion-action-ending.png)