# Geo-MHYDAS


## Overview

Version v12.01, available under ther terms of GNU GPLv3 licence (see LICENSE file)

This source code contains:
- README.md (this document)
- LICENSE : GPL license file
- src : source codes and uninstall-seg-doc (removing help documentation script)
- doc : quick tutorial, help documentation in html and pdf format. 


## Installation

### 1. Install GRASS GIS Software (if not yet installed) 

The GRASS version must be greater or equal to 6.3. This procedure will explain how to install grass 6.4.1 on Ubuntu 10.04 Lucid Lynx  
Add GRASS repository and install GRASS
```
sudo add-apt-repository ppa:ubuntugis/ubuntugis-unstable
sudo apt-get update
sudo apt-get install grass
```
To get more informations about GRASS GIS Software, go to http://grass.osgeo.org/


### 2. Install Geo-MHYDAS functions sources
By default, the Geo-MHYDAS sources directory is in $HOME. The following procedure will be explained for this directory, if you want to change it, don't forget to modify the path.
In your $HOME directory, create a geomhydas directory:
```
mkdir ~/geomhydas
```

Copy src into ~/geomhydas directory
```
cp ./src ~/geomhydas
```

Be sure that you have the right to execute these scripts (use chmod)
```
chmod a+x -R ~/geomhydas
```


### 3. Modify `.profile` files that allows GRASS to see these scripts

Adding this line to ~/.profile file
`PATH=$PATH:$HOME/geomhydas`

You need to restart your X server 


### 4. Installing Geo-MHYDAS functions help documentation
Copy Geo-MHYDAS_help (be careful, you will be root user !). In the Geo-MHYDAS package, go to doc/html directory and copy all files into /usr/share/doc/grass-doc/html


Now, html help documentation can be called in grass by : g.manual m.*
It will launch your web browser with the html page desired.


## Uninstall procedure

To uninstall Geo-MHYDAS function help documentation  
Launch uninstall-seg-doc file in root user  
```
sudo ~/geomhydas/uninstall-seg-doc
```

To uninstall Geo-MHYDAS functions sources
Remove your Geo-MHYDAS directory
```
rm -R ~/geomhydas
```














   


