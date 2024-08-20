if [ ! "$(docker ps -q -f name=jove)" ]; then
    if [ ! "$(docker ps -aq -f name=jove)" ]; then
        docker run -d -p 8888:8888 --name jove -v "./Jove:/opt/Jove" jove-environment
    else
        docker start jove
    fi
fi