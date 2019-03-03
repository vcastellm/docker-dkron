# Official Dkron docker image

NOTE: This repo is no longer needed, image is now managed from the main repo.

## Supported tags and respective Dockerfile links
- latest [Dockerfile](https://github.com/victorcoder/docker-dkron/blob/master/Dockerfile)

What is Dkron?

Dkron is a system service that runs scheduled jobs at given intervals or times, just like the cron unix service but distributed in several machines in a cluster. If a machine fails (the leader), a follower will take over and keep running the scheduled jobs without human intervention. Dkron is Open Source and freely available.

More info http://dkron.io

## How to use this image

start a Dkron instance

    $ docker run --name some-dkron -d dkron/dkron agent -server

This image includes EXPOSE 8080 8946, so standard container linking will make it automatically available to the linked containers (as the following examples illustrate).

## License

View license information for the software contained in this image.

## Issues

If you have any problems with or questions about this image, please contact us through a GitHub issue.
