description = [[
Simple HTTP port scanner
]]

author = "YourName"
license = "Same as Nmap--See https://nmap.org/book/man-legal.html"
categories = {"default", "safe"}

portrule = function(host, port)
  return port.protocol == "tcp" and port.number == 80
end

action = function(host, port)
  return "HTTP server detected on " .. host.ip
end
