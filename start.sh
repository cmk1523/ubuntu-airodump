# Turn on device
#sudo ifconfig wlx00c0ca830680 up

# Scan
#sudo iwlist wlx00c0ca830680 scan

# Renames device to wlan0mon
#sudo airmon-ng start wlx00c0ca830680

# Put device in to monitor mode
sudo ifconfig wlx00c0ca830680 down
sudo iwconfig wlx00c0ca830680 mode monitor
sudo ifconfig wlx00c0ca830680 up
sudo airodump-ng wlx00c0ca830680 -w output --output-format csv,pcap;

# Check processes that could cause trouble
#sudo airmon-ng check wlx00c0ca830680

#tail -n +2 fixed.csv
#head -n -1 fixed.csv > fixed.csv
#head -n -1 fixed.csv > fixed.csv