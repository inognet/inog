# iNOG main website

Repository for homepage of [Ireland's Network Operator Group](https://inog.net).

Please use the supplied `devserver.sh` script in the directory to start a python
server on port 8000 or if you prefer to use the one liner below (which doesn't
check the python version but runs on privileged port 80 and adds a hosts entry
for localinog.net development [not SSL'd])

`if [ -n "$(grep -i localinog /etc/hosts)" ]; then echo "Hosts file already has entry for localinog"; else sudo sh -c "echo '127.0.0.1  localinog.net' >> /etc/hosts"; fi && cd pub && sudo python -m SimpleHTTPServer 80 && sudo sh -c "echo '127.0.0.1  localinog.net'"`
