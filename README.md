# MediaContainerMount

Custom run.sh script for embedding in media containers (i.e. plex), to delay start until the underlying container OS mounts are up. Useful where you can't use later versions of docker compose to introduce the dependencies.

Set an environment variable for your container of DATA_MOUNT to the directory in the container you need to check.
