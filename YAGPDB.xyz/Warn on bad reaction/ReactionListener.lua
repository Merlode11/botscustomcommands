{{/*
    Cette commande regarde les réactions pour savoir si un émoji ne devrait pas être ajouté

    Ne changez rien au code si vous ne vous y connaissez pas !!!

    Trigger: Reaction avec  "Added" en option

/*}}

{{$emoji := "🖕"}}{{/*Lémoji à enlever*/}}
{{$warn_reason := "Les signes grossiers sur les réaction sont interdit !"}}{{/*La raison du warn*/}}

{{if (hasRoleID $role)}}
{{else}}
        {{if eq .Reaction.Emoji.Name $emoji}}
        {{$warn := (execAdmin "warn" .User.ID $warn_reason)}}
	{{deleteMessageReaction nil .Reaction.MessageID .User.ID $emoji}}
        {{end}}
{{end}}