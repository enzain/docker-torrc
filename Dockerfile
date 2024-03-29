FROM ubuntu

RUN apt update && apt -y dist-upgrade && apt install -y tor nyx && echo "" >> /etc/tor/torrc && echo "ExitPolicy reject *:*" >> /etc/tor/torrc && echo "ExitPolicy reject6 *:*" >> /etc/tor/torrc && echo "ORPort 9001" >> /etc/tor/torrc && echo "DirPort 9030" >> /etc/tor/torrc && echo "Nickname iddqd" >> /etc/tor/torrc && echo "ControlPort 9051" >> /etc/tor/torrc && echo "ExitRelay 0" >> /etc/tor/torrc 

EXPOSE 9001 9030

CMD tor
