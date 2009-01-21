# $Id$
class rkhunter {
  case $kernel {
    "Linux": {
      package{"rkhunter": ensure => "latest"}

      file{"/etc/rkhunter.conf":
	content => template("rkhunter/rkhunter.conf.erb"),
		owner => root,
		mode  => 0600,
		require => Package["rkhunter"],
      }
    }
  }
}
