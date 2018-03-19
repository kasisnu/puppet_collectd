# private
class collectd::plugins::tcpconns(
  $plugin_template = 'collectd/tcpconns.conf.erb'
) {
  include collectd

  collectd::plugins::plugin_common { 'tcpconns':
    package_name     => 'UNSET',
    package_ensure   => present,
    package_required => false,
    plugin_file_name => '10-tcpconn.conf',
    plugin_template  => $plugin_template,
  }
}
