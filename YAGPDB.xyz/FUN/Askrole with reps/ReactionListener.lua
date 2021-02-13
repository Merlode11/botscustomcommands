{{if eq .Reaction.ChannelID 730494645976563742}}
    {{if eq .ReactionMessage.Author.ID 204255221017214977}}
        {{if eq .Reaction.Emoji.Name "✅"}}
            {{if .ReactionMessage.Embeds}}
            {{$embed := (index .ReactionMessage.Embeds 0)}}
            {{if $embed.Description}}
                {{if (reFind "([0-9]{18})" $embed.Description)}}
                    {{ $userid := (reFind "([0-9]{18})" $embed.Description)}}
                    {{ $db := dbGet (toInt $userid) "roleask"}}
                        {{if dbGet (toInt $userid) "roleask"}}
                            {{$membed := cembed 
                                "title" $embed.Title 
                                "description"  $embed.Description
                                "color" 4645612 
                                "fields" (cslice 
                                    (sdict "name" "Nombre de reps :" "value" (index $embed.Fields 0).Value "inline" true)
                                (sdict "name" "Statut de la demande :" "value" (joinStr "" "✅ Demande acceptée par <@" .Reaction.UserID "> (`" .Reaction.UserID "`)") "inline" true))
                                "author" $embed.Author
                                "thumbnail" $embed.Thumbnail
                                "footer" (sdict "text" $embed.Footer.Text) 
                                "timestamp" $embed.Timestamp
                            }}
                        {{editMessage .Reaction.ChannelID .Reaction.MessageID $membed }}
                        {{deleteAllMessageReactions nil .Reaction.MessageID}}{{addReactions "🇦" "🇩" "🇲" "🇮" "🇸"}}
                        {{giveRoleID (toInt $userid) 625228945737908234}}
                        {{ sendMessage nil (joinStr "" "Félicitations <@" $userid "> ! Vous avez obtenu le rôle ROLE_ICI ! Faites en bon usage !") }}
                        {{dbDel (toInt $userid) "roleask"}}
                        {{end}}{{end}}{{end}}{{end}}

                        {{else if eq .Reaction.Emoji.Name "❌" }}
                        {{if .ReactionMessage.Embeds}}
                        {{$embed := (index .ReactionMessage.Embeds 0)}}
                        {{if $embed.Description}}
                        {{if (reFind "([0-9]{18})" $embed.Description)}}
                        {{ $userid := (reFind "([0-9]{18})" $embed.Description)}}
                        {{ $db := dbGet (toInt $userid) "roleask"}}
                        {{if dbGet (toInt $userid) "roleask"}}
                            {{$membed := cembed 
                                "title" $embed.Title 
                                "description"  $embed.Description
                                "color" 4645612 
                                "fields" (cslice 
                                    (sdict "name" "Nombre de reps :" "value" (index $embed.Fields 0).Value "inline" true)
                                (sdict "name" "Statut de la demande :" "value" (joinStr "" "❌ Demande refusée par <@" .Reaction.UserID "> (`" .Reaction.UserID "`)") "inline" true)) 	
                                "author" $embed.Author
                                "thumbnail" $embed.Thumbnail
                                "footer" (sdict "text" $embed.Footer.Text) 
                                "timestamp" $embed.Timestamp
                            }}
                        {{editMessage .Reaction.ChannelID .Reaction.MessageID $membed }}
                        {{deleteAllMessageReactions nil .Reaction.MessageID}}{{addReactions "🇷" "🇪" "🇫" "🇺" "🇸"}}
                        {{ sendMessage nil (joinStr "" "Aie aie aie... Vous avez été refusé <@" $userid ">. Demandez à <@" .Reaction.UserID "> la raison du refus")}}
                        {{dbDel (toInt $userid) "roleask"}}
                        {{dbSetExpire (toInt $userid) "roleask-cooldown" 1 43200}}
                        {{end}}{{end}}{{end}}{{end}}

                        {{else if eq .Reaction.Emoji.Name "👢" }}
                        {{if .ReactionMessage.Embeds}}
                        {{$embed := (index .ReactionMessage.Embeds 0)}}
                        {{if $embed.Description}}
                        {{if (reFind "([0-9]{18})" $embed.Description)}}
                        {{ $userid := (reFind "([0-9]{18})" $embed.Description)}}
                        {{ $db := dbGet (toInt $userid) "roleask"}}
                        {{if dbGet (toInt $userid) "roleask"}}
                            {{$membed := cembed 
                            "title" $embed.Title 
                            "description"  $embed.Description
                            "color" 4645612 
                            "fields" (cslice 
                                    (sdict "name" "Nombre de reps :" "value" (index $embed.Fields 0).Value "inline" true)
                                    (sdict "name" "Statut de la demande :" "value" (joinStr "" "❌ Demande refusée par <@" .Reaction.UserID "> (`" .Reaction.UserID "`) Il l'a également **blacklist**") "inline" true)) 	
                            "author" $embed.Author
                                "thumbnail" $embed.Thumbnail
                                "footer" (sdict "text" $embed.Footer.Text) 
                                "timestamp" $embed.Timestamp
                            }}
                            {{editMessage .Reaction.ChannelID .Reaction.MessageID $membed }}
                            {{deleteAllMessageReactions nil .Reaction.MessageID}}{{addReactions "🇷" "🇪" "🇫" "🇺" "🇸" "👢"}}
                            {{ sendMessage nil (joinStr "" "Aie aie aie... Vous avez été refusé <@" $userid ">. Demandez à <@" .Reaction.UserID "> la raison du refus. Sachez également que vous avez été blacklist des demandes. Ce qui veut dire que vous ne pourrez plus faire de demandes")}}
                            {{dbDel (toInt $userid) "roleask"}}
                            {{dbSet (toInt $userid) "roleask-blacklist" 1}}
                        {{end}}
                    {{end}}
                {{end}}
            {{end}}
        {{end}}
    {{end}}
{{end}}