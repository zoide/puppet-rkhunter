class rkhunter ($ensure = 'present') {
  package { ['rkhunter','prelink']: ensure => $ensure, }

  file { '/etc/rkhunter.conf':
    content => template('rkhunter/rkhunter.conf.erb'),
    owner   => root,
    mode    => 0600,
    before  => Package['rkhunter'],
    ensure  => $ensure,
  }
}
