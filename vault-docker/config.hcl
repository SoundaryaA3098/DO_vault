ui = true
disable_mlock = true
storage "file" {
   path    = "/home/project/data"
}
listener "tcp" {
   address     = "0.0.0.0:8200"
   tls_disable = 1
}
