updates_arch=$(checkupdates 2> /dev/null | wc -l)

updates_aur=$(trizen -Su --aur --quiet | wc -l)

updates=$(("$updates_arch" + "$updates_aur"))

printf '{"text": "%s","alt": "%s","tooltip": "%s Updates"}' "$updates" "$updates" "$updates"
