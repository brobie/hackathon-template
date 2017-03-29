# Community 2.1.5 Project
This project is a small starter project that is meant to be used with MageScotch (https://github.com/joshuaswarren/magescotch)

## Setup
Clone this project into the "public" directory of magescotch project.  Once you have SSH'ed in to the VM, go to /var/www/html/hackathon-template directory and run "sh bootstrap.sh".

## Access
This will create the project that can be accessed:

Frontend: http://192.168.33.10/hackathon-template

Backend: http://192.168.33.10/hackathon-template/adminpanel

Username: hackathon

Password: hackathon123


## Sample Data
By default, sample data is not installed.  To install sample data, run the following commands from the /var/www/html/hackathon-template directory:

bin/magento sampledata:deploy

bin/magento setup:upgrade
