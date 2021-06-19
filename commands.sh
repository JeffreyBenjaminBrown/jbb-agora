docker run --name agora -it         \
  -v /home/jeff/agora:/home/appuser \
  -p 8001:8001                      \
  -d -h 127.0.0.1                   \
  ofiscal/tax.co:latest

docker exec -it agora bash
