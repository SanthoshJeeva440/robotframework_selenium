#echo "Parallel Suite Test"
#
#pabot --processes 1 --testlevelsplit --argumentfile1 ./resources/users/user_1.txt --argumentfile2 ./resources/users/user_2.txt -d ./output ./test_suite/smoke



#!/bin/bash

# File containing user credentials
USERS_FILE="resources/configuration/users.txt"

# Read each line in the users.txt and run tests in parallel using Pabot
while IFS=',' read -r USER PASSWORD; do
    # Run Pabot for each user with different credentials
    pabot --processes 2 --variable USERNAME:${USER} --variable PASSWORD:${PASSWORD} test_suite/smoke &
done < $USERS_FILE

# Wait for all background processes to finish
wait
