lsyncd config for replicating eupspkg tree
==========================================

ssh private key setup
---------------------

The ssh private key is expected to be at `~/.ssh/id_rsa-eupspkg`.

enable via cron
---------------

    (crontab -l 2>/dev/null; echo '*/15 * * * * LSYNCD_ROOT=$HOME/lsyncd-eupspkg $HOME/lsyncd-eupspkg/etc/init.d/lsyncd-eupspkg start') | crontab -

