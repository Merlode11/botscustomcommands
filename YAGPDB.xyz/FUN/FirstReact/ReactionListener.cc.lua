{{/*
    Cette commande regarde les réactions pour savoir qui est le premier qui gagne

    Ne changez rien au code si vous ne vous y connaissez pas !!!

    Trigger: Reaction avec  "Added" en option

    Crédits à ne pas retirer !
        Custom command créée par Merlode#8128 sur une idée originale de Alban 1505#0465
/*}}

{{if (dbGet .Reaction.MessageID "firstreact")}}
    {{$emoji := .Reaction.Emoji.Name}}
    {{if .Reaction.Emoji.ID}}
        {{if .Reaction.Emoji.Animated}}
            {{$emoji = (print "<a:" .Reaction.Emoji.Name ":" .Reaction.Emoji.ID ">")}}
        {{else}}
            {{$emoji = (print "<:" .Reaction.Emoji.Name ":" .Reaction.Emoji.ID ">")}}
        {{end}}
    {{end}}
    {{if eq (dbGet .Reaction.MessageID "firstreact").Value $emoji}}
        {{dbDel .Reaction.MessageID "firstreact"}}
        {{$msg := reReplace "En attente de gagnant" .ReactionMessage.Content (print "<@" .Reaction.UserID "> a remporté cette partie ! 🎉")}}
        {{editMessage nil .Reaction.MessageID $msg}}
    {{else}}
        {{if .Reaction.Emoji.ID}}
            {{deleteMessageReaction nil .Reaction.MessageID .User.ID (print .Reaction.Emoji.Name ":" .Reaction.Emoji.ID)}}
        {{else}}
            {{deleteMessageReaction nil .Reaction.MessageID .User.ID .Emoji.Name}}
        {{end}}
    {{end}}
{{end}}