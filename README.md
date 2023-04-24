Robot Framework Selenium
=========================

.. contents::

Introduction
____________
SeleniumLibrary is a web testing library for Robot Framework that utilizes the Selenium tool internally. The project is hosted on GitHub and downloads can be found from PyPI. SeleniumLibrary works with Selenium 3 and 4. It supports Python 3.6 or newer.

Installation
____________
Python

PyCharm CE IDE or Inteliji IDEA CE IDE

Windows-Run Install Libraries.bat

Mac or Linux-Run Install Libraries.sh

Execution
_________

Single Suite Test

```bash
python3 -m robot -d reports ./test_suite/smoke/TC-01_login_web.robot
```

Execute All Suite

```bash
python3 -m robot -d reports ./test_suite/smoke/
```

```bash
python3 -m robot -d reports ./test_suite/e2e/
```

```bash
python3 -m robot -d reports ./test_suite/regression/
```

Run Suite With Different Environment
____________________________________

Default-Suite Execution On QA Environment

```bash
python3 -m robot -d reports -v env:dev ./test_suite/smoke/TC-01_login_web.robot
```

Run Suite Excution On-Dev Environment

```bash
python3 -m robot -d reports -v env:stage ./test_suite/smoke/TC-01_login_web.robot
```
