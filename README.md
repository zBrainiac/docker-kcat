docker buildx build --platform linux/amd64,linux/arm64 -f dockerfile-multiarch-kcat --tag brainiac/multiarch-kcat:0.1.1 --push .



docker-compose down &&
docker rm -f $(docker ps -a -q) &&
docker volume rm $(docker volume ls -q)



tail -f /var/log/generated.log | kcat -b kafka:9092 -t syslog


tail -f /var/log/generated.log | kcat -b 172.26.0.7:9092 -t syslog


local test:
tail -f  /private/var/log/com.apple.xpc.launchd/launchd.log | kcat -b kafka:9092 -t syslog
docker run -it --network=host brainiac/multiarch-kcat:0.1.1 -b kafka:9092 -L

kcat  -b 172.26.0.7:9092 -L


echo "abc:" | kcat -b kafka:9092 -t mytopic