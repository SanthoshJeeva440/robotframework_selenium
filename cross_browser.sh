
echo "Cross Browser Testing - Chrome, Firefox & Edge "

pabot --processes 3 --testlevelsplit --argumentfile1 ./resources/configuration/firefox.txt --argumentfile2 ./resources/configuration/chrome.txt --argumentfile3 ./resources/configuration/edge.txt -d ./output ./test_suite