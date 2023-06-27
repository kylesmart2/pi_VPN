# pi_VPN

I have configured an easy script to initiate installation of necessary tools and files.

1.Run startup script. Please download from this github.\
	Make sure to make script executable: \
 	```
  	chmod +x startup.sh
   	```
	Run script: \
	```
  	./startup.sh
   	```
2. Run startup ansible playbook \
	```
 	ansible-playbook startup.yml
  	```
3. Run install_vpn ansible playbook \
	```
 	ansible-playbook install_vpn.yml
  	```
4. Reboot \
   	```
    	reboot now
     	```
5. Connect to wifi and check whatsmyip.com to see your public IP. \
