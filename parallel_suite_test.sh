echo "Parallel Suite Test"

# File containing user credentials
USERS_FILE="resources/configuration/users.txt"

# Read each line in the users.txt and run tests in parallel using Pabot
while IFS=',' read -r USER PASSWORD; do
    # Run Pabot for each user with different credentials
    pabot --processes 2 --variable USERNAME:${USER} --variable PASSWORD:${PASSWORD} -d ./output test_suite/smoke &
done < $USERS_FILE

# Wait for all background processes to finish
wait
