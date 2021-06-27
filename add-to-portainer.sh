# Located in ./volume1/.@plugins/AppCentral/portainer-ce/CONTROL/start-stop.sh
# Add this under the "start" instructions

echo "Kill myhttp to so nginx can take it over"
/usr/bin/pkill /usr/sbin/myhttpd
