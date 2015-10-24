# == Class: googlechrome::repo
#
# === Authors
#
# Jochen Schalanda <j.schalanda@smarchive.de>
#
# === Copyright
#
# Copyright 2012 smarchive GmbH
#
class googlechrome::update() {
  case $::osfamily {
    'Debian': {
      class { 'apt::update': }
    }
    'RedHat': {
    }
    default:  { fail("${::osfamily} is not supported by ${module_name}") }
  }
}
