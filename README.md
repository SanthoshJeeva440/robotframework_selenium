Robot Framework Selenium
=========================

## Introduction


SeleniumLibrary is a web testing library for Robot Framework that utilizes the Selenium tool internally. The project is hosted on GitHub and downloads can be found from PyPI. SeleniumLibrary works with Selenium 3 and 4. It supports Python 3.6 or newer.

## Installation
Python

PyCharm CE IDE or Inteliji IDEA CE IDE

Windows-Run Install Libraries.bat

Mac or Linux-Run Install Libraries.sh

### Execution


### Single Test Case Execution

```bash
python3 -m robot -d reports -t "TC-01 Lunch Browser & Login With Valid Credential" /test_suite
```

### Execute All Suite

```bash
python3 -m robot -d reports ./test_suite
```
### Execute Particular Suite With Using Tags Name
```bash
python3 -m robot -d reports --include e2e./test_suite
```

```bash
python3 -m robot -d reports --include TC-01 ./test_suite
```

## Run Suite With Different Environment


### Default-Suite Execution On QA Environment

```bash
python3 -m robot -d reports -v env:dev --include TC-01 ./test_suite
```

### Run Suite Execution On-Dev Environment

```bash
python3 -m robot -d reports -v env:stage --include TC-01 ./test_suite
```

## BDD RobotFramework

Put file name like BDD_login_.robot then only can able to use gherkin keywords,
Given, When, Then, And, But

```robotframework
*** Test Cases ***

TC-01 Lunch Browser & Login With Valid Credential

        [Tags]    TC-01     smoke
        Given Login Hotel With Valid Credential
        When Click Login Button
        And Click Logout Button
        Then Click Again Login Button
```
## Importing a Custom Library in Robot Framework Without Using an Absolute Path

Instead of importing a custom library using an absolute path like this:
```robotframework
*** Settings ***
Library         SeleniumLibrary
Library         ../../custom_library/CustomLibrary.py
```

You can import it more efficiently like this:
```robotframework
*** Settings ***
Library         SeleniumLibrary
Library         custom_library.CustomLibrary
```
