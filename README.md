# Raspberry Pi Setup Files

These are some setup files for a new Raspberry Pi.

### setup.sh

Here's what the main setup.sh script installs

* New prompts to select packages to install
* WiFi SSID's/passwords
* 80autostart - autostart file
* xrdp
* conky
* emacs
* Chrome browser
* npm to support NodeRed
* mongodb to support NodeRed
* Calculate install time and include with text message

##### ToDo

* Elapsed time calculation not working
* Useradd failing
* Option to install Touch screen
   https://www.element14.com/community/docs/DOC-77915/l/i-can-see-clearly-now-with-the-4d-systems-24-touch-screen-for-the-raspberry-pi
* Run RPi update process
   sudo apt-get update && sudo /usr/share/rpimonitor/scripts/updatePackagesStatus.pl
* Pi password not set
* Calculate disk space used
* Install Node Red nodes
* If user chooses Cancel on any prompt, abort setup script
* Add prompts to select install of dependent files

##### Fixed bugs

* Error - Unable to resolve host raspberrypi
* can't overwrite /etc/localtime, delete first

#### Dependencies

These files must be in the setup.sh home directory to function correctly:

* wpa_supplicant.conf
* 80autostart
* .conkyrc

#### Notes

* Choose apps to start on boot: RPi Monitor, Node Red, MongoDB
  * Node Red
     sudo systemctl enable nodered.service
  * MongoDB
    http://stackoverflow.com/questions/17901627/setting-up-mongodb-raspberry-pi
    http://c-mobberley.com/wordpress/2013/10/14/raspberry-pi-mongodb-installation-the-working-guide/
    sudo cp debian/init.d /etc/init.d/mongod
    sudo cp debian/mongodb.conf /etc/
    sudo ln -s /opt/mongo/bin/mongod /usr/bin/mongod
    sudo chmod u+x /etc/init.d/mongod
    sudo update-rc.d mongod defaults
    sudo /etc/init.d/mongod start