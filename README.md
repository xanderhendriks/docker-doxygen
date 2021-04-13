# doxygen
[doxygen](https://github.com/xanderhendriks/docker-doxygen): Doxygen docker container for documentation generation from source code

## Build
To create the image `xanderhendriks/doxygen`, execute the following command in the
`docker-doxygen` folder:

    docker build -t xanderhendriks/doxygen .

You can now tag the repo for a new build to be started on the docker hub


## Run
    $ docker pull xanderhendriks/doxygen

    $ docker run -it --name doxygen \
        -v c:\GIT\repo:/workspace \
        xanderhendriks/doxygen

