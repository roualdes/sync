DESTINATION="testbank:/home/edward/synced/"

rsync -zvau --delete -e ssh \
      --exclude '.DS_Store' \
      --exclude 'report_cache' \
      --exclude 'report_files' \
      "$HOME/Documents/research" "$DESTINATION"

rsync -zvau --delete -e ssh \
      --exclude '.DS_Store' \
      "$HOME/Documents/readme" "$DESTINATION"
