# WebSphere Liberty

Simple Java application running in WebSphere build with Docker.

## Prerequisites

- [Docker]

## Build

At root directory, run:

```sh
docker build -t filipecorrea/websphere-liberty .
```

This will take a while for the first time since it downloads and installs Maven and downloads all the project’s dependencies. Every subsequent start of this build will only take a few seconds, as again everything will be already cached.

## Run

Once the image is built, start it with:

```sh
docker run --name websphere-liberty -d -p 80:9080 filipecorrea/websphere-liberty
```

WebSphere takes about a minute to start. Once it's complete, you can test the application running:

```sh
open "http://$(docker-machine ip default)/Sample/SimpleServlet"
```

## Optional

[fswatch] is a file change monitor that receives notifications when the contents of specified files or directories are modified.

If you want to keep your Docker container updated everytime you change project's source code, just install it using [Homebrew]:

```sh
brew install fswatch
```

And point it to your project source folder:

```sh
fswatch -o ~/project-path/src | xargs -n1 ~/project-path/build.sh
```

[Docker]: <http://docker.com>
[fswatch]: <https://github.com/emcrisostomo/fswatch>
[Homebrew]: <http://brew.sh>
