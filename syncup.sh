DESTINATION="testbank:/home/edward/synced/"

d=""
u=""

while getopts "d" opt; do
    case ${opt} in
        d) d="--delete" ;;      # delete
        u) u="-u" ;;            # skip newer files on the receiver
    esac
done

rsync -zva ${u:+"$u"} ${d:+"$d"} -e ssh \
      --exclude '.DS_Store' \
      --exclude 'report_cache' \
      --exclude 'report_files' \
      "${HOME}/Documents/research" "$DESTINATION"

rsync -zva ${u:+"$u"} ${d:+"$d"} -e ssh \
      --exclude '.DS_Store' \
      "${HOME}/Documents/readme" "$DESTINATION"

