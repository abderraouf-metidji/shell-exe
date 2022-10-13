#!/bin/bash

my_input="/home/abdou/Shell_Userlist.csv"
declare -a id
declare -a fname
declare -a lname
declare -a pass
declare -a role
declare -a user

#"J'ai ajouté une colonne User au fichier CSV pour faciliter la création d'utilisateurs  avec prénomnom"

while IFS=, read -r Id Prenom Nom Mdp Role User;
do
	id+=("$Id")
	fname+=("$Prenom")
	lname+=("$Nom")
	pass+=("$Mdp")
	role+=("$Role")
	user+=("$User")

done<$my_input

for index in "${!id[@]}";
do
	sudo groupadd "${role[$index]}";
	sudo useradd -g "${role[$index]}" \
		     -d "/home/${user[$index]}" \
		     -s "/bin/bash" \
		     -p "$(echo "${pass[$index]}" | openssl passwd -1 -stdin)" "${user[$index]}"
		done


