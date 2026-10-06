#!/bin/bash
if [ -d "$PWD/scenarios/sachin-cka/CKA" ]; then
    SCENARIOS_DIR="$PWD/scenarios/sachin-cka/CKA"
else
    SCENARIOS_DIR="$PWD/sachin-cka/CKA"
fi

echo "=============================================="
echo "          SELECT A CKA SCENARIO TO RUN        "
echo "=============================================="

PS3="Select a number: "
select SCENARIO in $(find "$SCENARIOS_DIR" -mindepth 1 -maxdepth 1 -type d -exec basename {} \; | sort); do
    if [ -n "$SCENARIO" ]; then
        echo -e "\nStopping any previous running scenario..."
        docker stop $(docker ps -q --filter "name=lc-bk") 2>/dev/null
        
        echo -e "Starting: $SCENARIO ...\n"
        backend/bin/backend_run.sh "$SCENARIOS_DIR" "$SCENARIO/index.json"
        break
    else
        echo "Invalid selection. Please enter a valid number."
    fi
done
