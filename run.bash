if [ ! "$(docker ps -q -f name=jove)" ]; then
    if [ ! "$(docker ps -aq -f name=jove)" ]; then
        # If the container does not exist, run it
        docker run -d -p 8888:8888 --name jove jove-environment
    else
        # If the container exists but is stopped, start it
        docker start jove
    fi
fi

docker exec -it my_running_container /bin/bash