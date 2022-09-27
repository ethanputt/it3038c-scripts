var http = require("http");
var fs = require("fs");
var os = require("os");
var ip = require('ip');

var totalMem = os.totalmem();
var totalMBMem = totalMem / 1024;

var freeMem = os.freemem();
var freeMBMem = freeMem / 1024;
 
function covertSecondsToDays(sec) {
  var days = Math.floor(sec / (3600 * 24));
  return ("Days: " + days + ", ")
}

function covertSecondsToHours(sec) {
  var hours = Math.floor(sec / 3600);
  return ("Hours: " + hours + ", ")
}

function covertSecondsToMinutes(sec) {
  var hours = Math.floor(sec / 3600);
  sec = sec - hours * 3600;
  var minutes = Math.floor(sec / 60);
  return ("Minutes: " + minutes + ", ")
}

function covertSecondsToSeconds(sec) {
  var minutes = Math.floor(sec / 60);
  sec = sec - minutes * 60;
  return ("Seconds: " + sec)
}

function getProcessUptime(sec) {
  return (covertSecondsToDays(sec) + covertSecondsToHours(sec) + covertSecondsToMinutes(sec) + covertSecondsToSeconds(sec))
}

http.createServer(function (req, res) {

  if (req.url === "/") {
    fs.readFile("./public/index.html", "UTF-8", function (err, body) {
      res.writeHead(200, { "Content-Type": "text/html" });
      res.end(body);
    });
  }
  else if (req.url.match("/sysinfo")) {
    myHostName = os.hostname();
    html = `    
        <!DOCTYPE html>
        <html>
          <head>
            <title>Node JS Response</title>
          </head>
          <body>
            <p>Hostname: ${myHostName}</p>
            <p>IP: ${ip.address()}</p>
            <p>Server Uptime: ${getProcessUptime(os.uptime())}</p>
            <p>Total Memory: ${totalMBMem} MB</p>
            <p>Free Memory: ${freeMBMem} MB </p>
            <p>Number of CPUs: ${(os.cpus()).length}</p>            
          </body>
        </html>`
    res.writeHead(200, { "Content-Type": "text/html" });
    res.end(html);
  }
  else {
    res.writeHead(404, { "Content-Type": "text/plain" });
    res.end(`404 File Not Found at ${req.url}`);
  }
}).listen(3000);

console.log("Server listening on port 3000");
