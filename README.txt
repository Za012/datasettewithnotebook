1. on root directory run:
docker build . -t datasette -f .\Dockerfile.yaml 

2. inside the docker-compose.yaml file, change the volumes to your absolute path to the directory

3. Time to run the orchestration, in the root directory do:
docker compose up

4. to access datasette website: localhost:8009
5. to query datasette from jupyter do http://datasette:8009
