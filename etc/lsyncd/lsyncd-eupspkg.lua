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
    _extra = {"-P", "-e", "/usr/bin/ssh -i " .. os.getenv("HOME") .. "/.ssh/id_rsa-eupspkg -o StrictHostKeyChecking=no -l eupspkg"}
    },
}
