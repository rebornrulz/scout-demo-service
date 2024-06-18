# Docker Scout demo service

A repository containing an application and Dockerfile to demonstrate the use of Docker Scout to analyze and remediate CVEs in a container image.

Read the [Docker Scout Quickstart](https://docs.docker.com/scout/quickstart) for a full walkthrough. You can build and run the image with the following command:

```shell
docker build -t scout-demo-service@0.1.0
docker run scout-demo-service@0.1.0
```

The application consists of a basic ExpressJS server and uses an intentionally old version of Express and Alpine base image.
