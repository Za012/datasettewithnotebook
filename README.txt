1a. on root directory run:
docker build . -t datasette -f ./Dockerfile-datasette.yaml 

1b. on root directory run:
docker build . -t notebook -f ./Dockerfile-notebook.yaml 

2. Time to run the orchestration, in the root directory do:
docker compose up

3. to access datasette website: localhost:8001
4. to query datasette from jupyter do http://datasette:8001
