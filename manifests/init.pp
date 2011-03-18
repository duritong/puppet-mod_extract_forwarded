# manifests/init.pp
# 2008 - admin(at)immerda.ch
# License: GPLv3

# install and configure the module to spoof
# reverse proxy addresses.
# In the configuration the variable
#  $reverse_proxies
# is used. It is expected to be an array.
class mod_extract_forwarded {
    include mod_extract_forwarded::base
}

class mod_extract_forwarded::base {
    include apache
    package{'mod_extract_forwarded':
        ensure => present,
    }

    apache::config::file{'mod_extract_forwarded.conf':
        content => template('mod_extract_forwarded/apache_config.erb'),
    }
}
