# Build it:
```bash
git clone https://github.com/sonnyyu/docker-nmap
cd docker-nmap
docker build -t nmap .
docker tag nmap sonnyyu/nmap
docker push sonnyyu/nmap
```
# Grab it from dockerhub:
```bash
docker pull sonnyyu/nmap
```
# Test it:
```bash
docker run -it --rm sonnyyu/nmap --help
```
# Use it with:
```bash
docker run -it --rm sonnyyu/nmap -A 10.145.88.192
```
