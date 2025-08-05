INPUT_DIR=$1

# Iterate over each JSON file in the directory
for file in "$INPUT_DIR"/*.json; do
  # Use jq to update the value from 0 to 0.00
  jq 'walk(if type == "object" and .valueMoney? and .valueMoney.currency == "EUR" and .valueMoney.value == 0 then .valueMoney.value = 0.00 else . end)' "$file" > tmp.json && mv tmp.json "$file"
done