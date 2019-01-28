cp contrib/ubuntu16/cnyfund.service ubuntu@54.149.87.103:/etc/systemd/system
# service runs under /usr/bin
copy contrib/ubuntu16/binaries/cnyfund /usr/bin 

sudo systemctl enable cnyfund 
sudo systemctl start cnyfund
sudo systemctl status cnyfund

#Update binary
sudo systemctl stop cnyfund
# copy binary to /usr/bin
cnyfund systemctl daemon-reload
sudo systemctl start cnyfund
sudo systemctl status cnyfund

# Sample command to run as daemon
/usr/bin/cnyfund -daemon -datadir=/home/ubuntu/.cnyfund -conf=/home/ubuntu/.cnyfund/cnyfund.conf