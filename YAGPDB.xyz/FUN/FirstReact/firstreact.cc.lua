{{/*
    Name: firstreact.cc.lua
    Cette commande commence une partie de celui qui réagit le plus vite

    Ne changez rien au code si vous ne vous y connaissez pas !!!

    Trigger Type: Command
    Trigger: firstreact

    Utilisation:
    -firstreact :emoji:
    -firstreact :emoji: total
    -firstreact :emoji: hide
    -firstreact :emoji: unicode

    Crédits à ne pas retirer !
        Custom command créée par Merlode#8128 sur une idée originale de Alban 1505#0465
/*}}

{{$args := parseArgs 1 "Merci de bien vouloir indiquer **l'émoji** !"
    (carg "string" "L'émoji à faire deviner")}}

{{deleteTrigger 0}}
{{if eq (len .CmdArgs) 2}}
    {{if eq (index .CmdArgs 1) "total"}}
        {{$mID := sendMessageRetID nil (print "__Réagissez le plus vite possible avec :__ ||`" (index .CmdArgs 0) "`||\n> En attente de gagnant")}}
        {{dbSet $mID "firstreact" (index .CmdArgs 0)}}
    {{else if eq (index .CmdArgs 1) "hide"}}}}
        {{$mID := sendMessageRetID nil (print "__Réagissez le plus vite possible avec :__ ||" (index .CmdArgs 0) "||\n> En attente de gagnant")}}
        {{dbSet $mID "firstreact" (index .CmdArgs 0)}}
    {{else if eq (index .CmdArgs 1) "unicode"}}}}
        {{$mID := sendMessageRetID nil (print "__Réagissez le plus vite possible avec :__ `" (index .CmdArgs 0) "`\n> En attente de gagnant")}}
        {{dbSet $mID "firstreact" (index .CmdArgs 0)}}
    {{else}}
        {{$mID := sendMessageRetID nil (print "__Réagissez le plus vite possible avec :__ " (index .CmdArgs 0) "\n> En attente de gagnant")}}
        {{dbSet $mID "firstreact" (index .CmdArgs 0)}}
    {{end}}
{{else}}
    {{$mID := sendMessageRetID nil (print "__Réagissez le plus vite possible avec :__ " (index .CmdArgs 0) "\n> En attente de gagnant")}}
    {{dbSet $mID "firstreact" (index .CmdArgs 0)}}
{{end}}