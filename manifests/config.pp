# (prviate)
class logwatch::config {

  $mailfrom = $logwatch::mailfrom
  $mailto   = $logwatch::mailto

  file { '/etc/logwatch/conf/logwatch.conf':
    ensure  => present,
    owner   => root,
    group   => root,
    mode    => '0644',
    content => template('logwatch/logwatch.conf.erb'),
  }

}
