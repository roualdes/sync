SOURCE="testbank:/home/edward/synced/"
DESTINATION="$HOME/Documents/"

d=""
u=""

while getopts "du" opt; do
    case ${opt} in
        d) d="--delete" ;;      # delete
        u) u="-u" ;;            # skip newer files on the receiver
    esac
done

rsync -zva ${u:+"$u"} ${d:+"$d"} -e ssh "$SOURCE" "$DESTINATION"
