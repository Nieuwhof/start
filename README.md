# Starting up virtual environmet - Docker & Multipass - with one line
 * Extra user account <b>OPS</b> with sudo rights and NOPASSWD: set
 * Docker installed with portainer port 9443 and VSCode server port 8043
 * Multipass installed with full automated scripts in /home/ops/cloud:
   * /home/ops/cloud/build.sh <name> <optional: image or qcow2 image> <optional: -c 1 -m 10G -d 10G>
      * Image will be named installed with <b>ops</b>, <b>root</b> ssh-key and NOPASSWD: set and /mnt mounted akka shared to host wallace /mnt
   * /home/ops.cloud/delete-build.sh <name>
      * This will delete, purge and remove image name from /etc/hosts file on host wallace
   * Full Multipasss configuration - cloud-init - can be modified to your liking - Cloud.yaml
    
# What you can do! Alot with one line 
# All you need is Dedicated Server, VDS, Virtualbox or similiar.
  You will now be able to access two premade VPS created machines using ssh gromit or ssh preston.
  If you need you can create/delete your own VPS machines become <b>su ops</b> and change to <b>~/ops/cloud</b> where you will find 
  build.sh and delete-build.sh as explained above. You can update Cloud.yaml to your liking.
  These VPS systems will be UBUNTU based. Please follow multipass documentation for more information.
  Docker images can be installed by accessing Portainer at http://x.x.x.x:9443 - please configure your password.

  Add the string below to add template containing loads of preconfigured applications for Docker under the settings option in Portainer.
  
 <b>Portainer templates:</b>
  https://raw.githubusercontent.com/Qballjos/portainer_templates/master/Template/template.json
  
 <b>String to start amazing virtual machine installation:</b>    
 apt install git && git clone https://github.com/Nieuwhof/start.git && chmod +x start/start.sh && start/start.sh

