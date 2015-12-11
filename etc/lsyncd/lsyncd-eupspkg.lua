settings {
  log = all,
}

sync {
  default.rsync,
  source = "/home/lsstsw/distserver/production/",
  target = "eupspkg-test.lsst.codes:/opt/lsst/eupspkg/",
  rsync = {
    archive = true,
    verbose = true,
    _extra = {"-P", "-e", "/usr/bin/ssh -i /home/jhoblitt/id_rsa-test -o StrictHostKeyChecking=no -l eupspkg"}
    },
}
