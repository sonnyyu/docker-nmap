# Build it:
```bash
git clone https://github.com/sonnyyu/docker-nmap
cd docker-nmap
docker build -t nmap .
docker tag nmap sonnyyu/nmap
docker tag nmap:latest  sonnyyu/nmap:7.92
#docker login
docker push sonnyyu/nmap
```
# Grab it from dockerhub:
```bash
docker pull sonnyyu/nmap:7.92
```
# Test it:
```bash
docker run -it --rm sonnyyu/nmap:7.92 --help
docker run -it --rm sonnyyu/nmap:7.92 -V
```
# Use it with:
```bash
docker run -it --rm sonnyyu/nmap:7.92 -A scanme.nmap.org
docker run -it --rm sonnyyu/nmap:7.92 -sT -T4 scanme.nmap.org
docker run -it --rm sonnyyu/nmap:7.92 -oA scan -A scanme.nmap.org
docker run -it --rm sonnyyu/nmap:7.92 --script-updatedb
docker run -it --rm sonnyyu/nmap:7.92  -p 445 --script smb-os-discovery  192.168.1.71
docker run -it --rm sonnyyu/nmap:7.92 -p445 --script smb-vuln-ms08-067 192.168.1.71
docker run -it --rm sonnyyu/nmap:7.92 --script ssh-brute.nse 192.168.1.204
```
# Setup alias
```bash
nano  ~/.bashrc
#My custom aliases
alias nmap="docker run -it --rm sonnyyu/nmap:7.92"
source ~/.bashrc 
```
# Run with nmap
```bash
nmap -V
```
