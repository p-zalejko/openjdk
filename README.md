# My OpenJDK builds
This repository provides a simple script that builds OpenJDK in Docker.

## How it works
- a bash script:
  - downloads OpenJDK 11 that will be used as [Boot JDK](http://cr.openjdk.java.net/~ihse/demo-new-build-readme/common/doc/building.html#boot-jdk-requirements)
  - clones OpenJDK source code (from AdoptOpenJDK)
  - builds a docker image that will be used as "the builder"
  - starts the builder with monuted source code of the OpenJDK project
  
## How to build

Go to *script* and execute:
```sudo ./build-openjdk.sh```

Once the build is done go to *source/jdk/build/linux-x86_64-normal-server-release/images/jdk* . Execute:
```
./java -version
```

## How to customize the build
By editing *docker/Dockerfile* you can customize a few simple parameters

