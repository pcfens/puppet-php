# == Class: php::pecl::redis::config
#
# Configure the PHP redis extension
#
# === Parameters
#
# [*config_file*]
#   The path to the ini php5-redis ini file
#
# [*config_changes*]
# Hash with 'set' nested hash of key => value
# set changes to agues when applied to *config_file*
#
# === Variables
#
# No variables
#
# === Examples
#
#  include php::pecl::redis::config
#
# === Authors
#
# Christian Winther <cw@nodes.dk>
#
# === Copyright
#
# Copyright 2012-2013 Nodes, unless otherwise noted.
#
class php::pecl::redis::config(
  $config_file    = $php::pecl::redis::params::config_file,
  $config_changes = $php::pecl::redis::params::config_changes
) inherits php::pecl::redis::params {

  php::pecl::config { 'redis':
    extension       => 'redis',
    config_file     => $config_file,
    config_changes  => $config_changes
  }

}
