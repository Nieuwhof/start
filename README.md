# Starting up a virtual environment - Docker & Multipass
 * Extra user account <b>OPS</b> with sudo rights and NOPASSWD: set on newly configured host machine wallace.
 * Docker installed with portainer port 9443 and VSCode server port 8043
 * Multipass installed with full automated scripts in /home/ops/cloud:
   * /home/ops/cloud/build.sh <name> <optional: image or qcow2 image> <optional: -c 1 -m 10G -d 10G>
      * Image will be named installed with <b>ops</b>, <b>root</b> ssh-key, NOPASSWD: set, /etc/hosts updated and /mnt mounted akka shared to host wallace /mnt
   * /home/ops.cloud/delete-build.sh <name>
      * This will delete, purge and remove image name from /etc/hosts file on host wallace
   * Full Multipasss configuration - cloud-init - can be modified to your liking - Cloud.yaml
    
# Alot! using one line .....
  <b>All you need is Dedicated Server, VDS, Virtualbox or similiar.</b>

  You will now be able to access two premade VPS created machines by typin ssh ops@gromit or ssh ops@preston at the promt.
  If you need you can create/delete your own VPS machines by becoming <b>su ops</b> and changing to directory <b>~/ops/cloud</b> where you will find 
  build.sh and delete-build.sh as explained above. You can modify all needed paramaters by changing Cloud.yaml to your liking.
  These VPS systems will be UBUNTU based by default. 
  
Please follow multipass documentation for more information.
  
Docker images can be installed by accessing Portainer at http://x.x.x.x:9443 - It is very <b>IMPORTANT</b> to immediately change your Portainer username and password.

  Add the string below to add an template containing loads of preconfigured applications for Docker. Template can be changed under the settings option in Portainer.
  
 <b>Portainer templates:</b>
  https://raw.githubusercontent.com/Qballjos/portainer_templates/master/Template/template.json
  
 <b>String to start amazing virtual machine installation:</b>    
 apt install git && git clone https://github.com/Nieuwhof/start.git && chmod +x start/start.sh && start/start.sh

# Don't forget to modify your ansible/inventory/hosts file with your created containers/VPS's name and IP hosts address.

