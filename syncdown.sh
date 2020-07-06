SOURCE="testbank:/home/edward/synced/"
DESTINATION="$HOME/Documents/"

rsync -zvau --delete -e ssh "$SOURCE" "$DESTINATION"
