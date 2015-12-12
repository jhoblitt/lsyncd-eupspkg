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
    _extra = {"-P", "-e", "/usr/bin/ssh -i " .. os.getenv("HOME") .. "/.ssh/id_rsa-eupspkg -o StrictHostKeyChecking=no -l eupspkg"}
  },
}
