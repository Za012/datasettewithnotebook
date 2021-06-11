1. on root directory run:
docker build . -t datasette -f .\Dockerfile.yaml 

2. Time to run the orchestration, in the root directory do:
docker compose up

3. to access datasette website: localhost:8009
4. to query datasette from jupyter do datasette:8009