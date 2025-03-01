wallpaperPath=$(swww query | cut -d ":" -f 5)
mv $wallpaperPath ~/33/wallpaper/dislikes
waypaper --random