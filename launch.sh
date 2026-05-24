timestamp=$(date +"%Y-%m-%d_%H-%M-%S")
echo "Current timestamp: $timestamp" > ./times
sudo tailscaled --tun=userspace-networking &
sudo tailscale up --ssh &
bash /workspaces/26.1.2-vanilla/server/server.sh
