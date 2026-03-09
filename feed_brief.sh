FILTER='[.. | (.title?, .desc?) | select(.)]'

for arg in "$@"; do
    if [ "$arg" = "--image" ]; then
        FILTER='[.. | (.title?, .desc?, .imageList?) | select(.)]'
    fi
done

python -m scripts feed $1 $2 | jq "$FILTER"
