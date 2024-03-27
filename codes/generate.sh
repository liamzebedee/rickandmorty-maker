set -ex

DATA=$(jq -n --arg scriptContents "$(cat script.txt)" '{"script": $scriptContents}')

curl -X POST "http://localhost:8512/scenes/generate" \
-H "Content-Type: application/json" \
-d "$DATA"