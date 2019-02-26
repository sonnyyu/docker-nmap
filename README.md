Build it:

git clone https://github.com/sonnyyu/docker-nmap

cd docker-nmap

docker build -t nmap .

docker tag f6c00ea7aef7 sonnyyu/nmap

docker push sonnyyu/sqlmap


Grab it from dockerhub:

docker pull sonnyyu/nmap

Test it:

docker run -it --rm sonnyyu/nmap --help

Use it with:

docker run -it --rm sonnyyu/nmap -A 10.145.88.192
