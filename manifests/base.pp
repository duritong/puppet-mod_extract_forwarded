class mod_extract_forwarded::base {
  include apache
  package {'mod_extract_forwarded' :
    ensure => present,
  }
  apache::config::file {'mod_extract_forwarded.conf' :
    content => template('mod_extract_forwarded/apache_config.erb'),
  }
}