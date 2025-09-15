# Asian Hornets Website

## Introduction
This is the Irish Asian Hornets group's website. The goal is to extend
this with functionality to manage traps, including displaying where the
traps are deployed on a map. These locations with be held as accurate
locations in the database, but will be adjusted with a random displacement
when shown on the map, in order to protect the privacy of beekeepers'
apiary locations.

## Technologies
The tools and technologies used are:
- Linux as the hosting OS
- Apache2 as the web server. Configured to treat HTML as PHP so all files
have the .html extension.
- MariaDB for the database. It can be accessed by PHPMyAdmin on the local network
- Project Libre for the project plan, with the .pod file exported as MS Project XML

## DB Design
Uses the following schema:

![DB Schema](DBDesign.png)

