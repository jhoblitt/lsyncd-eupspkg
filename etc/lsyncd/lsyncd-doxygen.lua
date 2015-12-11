settings {
  log = all,
}

sync {
  default.rsync,
  source = "/lsst/home/buildbot/public_html/doxygen/",
  target = "doxygen-test.lsst.codes:/opt/lsst/doxygen/",
  rsync  = {
    archive = true,
    verbose = true,
    _extra = {"-P", "-e", "/usr/bin/ssh -i /home/jhoblitt/id_rsa-test -o StrictHostKeyChecking=no -l eupspkg"}
  },
}
