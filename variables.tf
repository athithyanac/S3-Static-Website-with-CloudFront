variable "project" {}
variable "region" {}
variable "domain" {}
variable "mime_types" {
  default = {
    htm : "text/html"
    html : "text/html"
    css : "text/css"
    ttf : "font/ttf"
    json : "application/json"
    png : "image/png"
    jpg : "image/jpeg"
    woff2 : "font/woff2"
    woff : "font/woff"
    eot : "application/vnd.ms-fontobject"
    js : "text/javascript"
    otf : "font/otf"
    svg : "image/svg+xml"
    mp4 : "video/mp4"
    txt : "text/plain"
  }
}
