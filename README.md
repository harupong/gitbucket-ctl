# Minimal Docker image for GitBucket

## Initial Setup
### To make GitBucket data persistent in your host $HOME directory

```
docker run -v "$HOME/.gitbucket:/root/.gitbucket" --name gitbucket -p 8080:8080 harupong/gitbucket 
```

### To keep GitBucket data persistent as Docker volume

```
docker volume create --name gb-data
docker run -v gb-data:/root/.gitbucket --name gitbucket -p 8080:8080 harupong/gitbucket 
```

## Start a container
### If your container is stopped(e.g. host reboot)

`docker start <ID of stopped container>` to restart it.

### If your container is deleted

Execute the `docker run` command described above that fits your use case.

## Backup 

If you are keeping your data in your $HOME directory, then just make a copy of `.gitbucket` directory as backup.

If you've created a docker volume for your data, then [read the official document](https://docs.docker.com/engine/userguide/containers/dockervolumes/) to properly backup the volume.
