cd /tmp;
rm backpipe1;
mknod backpipe1 p;
while true; do
echo start_udp_relay;
nc -lu -w 1 -p 5005 0<backpipe1 | nc -lu -w 1 -p 5004 | tee backpipe1;
done
