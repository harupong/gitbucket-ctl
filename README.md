# Minimal Docker image for GitBucket

## Initial Setup

These steps launch containers:

- detached.
- that automatically restart unless stopped.

### To make GitBucket data persistent in your host $HOME directory

```
docker run -d --restart="unless-stopped" -v "$HOME/.gitbucket:/root/.gitbucket" --name gitbucket -p 8080:8080 harupong/gitbucket 
```

### To keep GitBucket data persistent as Docker volume

```
docker volume create --name gb-data
docker run -d --restart="unless-stopped" -v gb-data:/root/.gitbucket --name gitbucket -p 8080:8080 harupong/gitbucket 
```

## Start a container
### If you've stopped the container

`docker start <ID of stopped container>` to restart it.

### If your container is deleted

Execute the `docker run` command described above that fits your use case.

## Backup 

If you are keeping your data in your $HOME directory, then just make a copy of `.gitbucket` directory as backup.

If you've created a docker volume for your data, then [read the official document](https://docs.docker.com/engine/userguide/containers/dockervolumes/) to properly backup the volume.
