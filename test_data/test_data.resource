*** Settings ***
Documentation       Handling Test data

Variables           ../test_data/${test_data_path}


*** Variables ***
${env}                  qa
${test_data_path}       ${env}_test_data.yaml
