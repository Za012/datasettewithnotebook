1a. on root directory run:
docker build . -t datasette -f ./Dockerfile-datasette.yaml 

1b. on root directory run:
docker build . -t notebook -f ./Dockerfile-notebook.yaml 

2. Time to run the orchestration, in the root directory do:
docker compose up

3. to access corp_data (datasette) website: localhost:8001
4. to query corp_data (datasette) from jupyter do http://corp_data:8001
