# Start setting up virtual environmet - Docker & Multipass
 * Extra user account <b>OPS</b> with sudo rights and NOPASSWD: set
 * Docker installed with portainer port 9443 and VSCode server port 8043
 * Multipass installed with full automated scripts in /home/ops/cloud:
    a: /home/ops/cloud/build.sh <name> <optional: image or qcow2 image> <optional: -c 1 -m 10G -d 10G>
    - Image will be named installed with <b>ops</b>, <b>root</b> ssh-key and NOPASSWD: set and /mnt mounted akka shared to host wallace /mnt
    b: /home/ops.cloud/delete-image.sh <name>
       - This will delete, purge and remove image name from /etc/hosts file on host wallace
    c: Full Multipasss configuration - cloud-init - can be modified to your liking - Cloud.yaml
    
    
apt install git && git clone https://github.com/Nieuwhof/start.git && chmod +x start/start.sh && start/start.sh

