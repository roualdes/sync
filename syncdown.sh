SOURCE="testbank:/home/edward/synced/"
DESTINATION="/Users/edward/Documents/"

rsync -zau --delete -e ssh \
      "$SOURCE" "$DESTINATION"


