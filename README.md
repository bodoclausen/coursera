# Advanced Learning Algorithms
## Building a docker environment for Coursera Course 
To be able to run the jupyter Notebooks locally I created a docker container.
I realized that the course uses an older Python 3.7 version.
Using docker give me the chance to do the labs with this old version, but also to push the Python and library versions to newer Versions without breaking my whole environment.

## build the image
Just call the build script.
It just contains:
```
docker build -t python-bcl:latest .
```

## Images used
I use Debian Images (Version 12 slim-bookworm).
The requirements are in the requirements.txt.

## I ignore the data of Coursera and provide just empty folder
As this is not my code I don't provide the Coursera jupyter notebooks