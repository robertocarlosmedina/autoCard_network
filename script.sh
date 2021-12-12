#!/bin/bash
locais=( "Mindelo" "SFilipe" "Espargos" )
users=( "-pecas" "-oficina" )

for num in {1..2};
do
  for place in "${locais[@]}";
  do
    for username in "${users[@]}";
    do

      user=${place,,}$username
      echo -e  "feature-list=reply-always-uses-reply-to\ncustomized-hdrs=Reply-To: $user@autocar.ttt" >> Maquina$num-LanServicosAdmin$place/home/$user/.pinerc
      
    done
  done
done
