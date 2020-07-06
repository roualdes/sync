DESTINATION="testbank:/home/edward/synced/"

rsync -zvau --delete -e ssh \
      --exclude '.DS_Store' \
      --exclude 'report_cache' \
      --exclude 'report_files' \
      /Users/edward/Documents/research "$DESTINATION"

rsync -zvau --delete -e ssh \
      --exclude '.DS_Store' \
      /Users/edward/Documents/readme "$DESTINATION"
