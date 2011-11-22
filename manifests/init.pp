# manifests/init.pp
# 2008 - admin(at)immerda.ch
# License: GPLv3

# install and configure the module to spoof
# reverse proxy addresses.
class mod_extract_forwarded {
    include mod_extract_forwarded::base
}
