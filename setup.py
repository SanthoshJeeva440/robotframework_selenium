from setuptools import setup

setup(
    name="CustomLibrary",
    version="1.0",
    description="A custom library for Robot Framework",
    author="Santhosh.G",
    author_email="Santhoshjeeva440@gmail.com",
    packages=["custom_library"],  # Ensure this is the correct package path
    install_requires=["robotframework"],  # Add dependencies if needed
)