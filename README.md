<p align="center">
<img src="https://github.com/hax4us/haxRat/raw/master/server/assets/webpublic/logo.png" height="60"><br>
A cloud based remote android managment suite, powered by NodeJS
</p>



## Features
- Screenshot Capture
- Screen Recorder
- Rear Camera Recorder
- Front Camera Recorder
- Lock Device
- GPS Logging
- Microphone Recording
- View Contacts
- SMS Logs
- Send SMS
- Call Logs
- View Installed Apps
- View Stub Permissions
- Live Clipboard Logging
- Live Notification Logging
- View WiFi Networks (logs previously seen)
- File Explorer & Downloader
- Command Queuing
- Built In APK Builder

## TODO
- Call Blocker

## Installation
### For TermuxBlack Users
- `apt install haxrat`
- Run server `haxrat`

### For Termux Users
1. Install NodeJs `apt install nodejs`

2. Clone `git clone https://github.com/hax4us/haxRat.git`

3. Goto server directory `cd haxRat/server`

4. Install all dependencies `npm install`

5. Make a separate directory where haxrat app will be save `mkdir ~/haxrat`

6. Run server `node index.js`

7. In your browser navigate to `http://<SERVER IP>:22533` & Login with default username and password ( By default server will run on localhost and to make a client APP you can use [PORTMAP](https://portmap.io) to access APP on wide area network , check below for demo to setup haxRAT with PORTMAP.)

### For default PASSWORD [CLICK HERE](https://afly.pro/INTuM7)
### This video contains instructions for getting password [CLICK HERE](https://youtu.be/ZtZxzohfIx4)


## Thanks
 - Inspiration for the project and the basic building blocks for the Android App are based off [L3MON](https://github.com/D3VL/L3MON) 
 - [express](https://github.com/expressjs/express)
 - [node-geoip](https://github.com/bluesmoon/node-geoip)
 - [lowdb](https://github.com/typicode/lowdb)
 - [socket.io](https://github.com/socketio/socket.io)
 - [Open Street Map](https://www.openstreetmap.org)
 - [Leaflet](https://leafletjs.com/)

## Disclaimer
<b>I ( Lokesh Pandey a.k.a Hax4Us )  Provides no warranty with this software and will not be responsible for any direct or indirect damage caused due to the usage of this tool.<br>
haxRat is built for both Educational and Internal use ONLY.</b>
