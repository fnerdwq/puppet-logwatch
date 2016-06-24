# (prviate)
class logwatch::config {

  $mailfrom     = $logwatch::mailfrom
  $mailto       = $logwatch::mailto
  $ignore_lines = $logwatch::ignore_lines

  file { '/etc/logwatch/conf/logwatch.conf':
    ensure  => present,
    owner   => root,
    group   => root,
    mode    => '0644',
    content => template('logwatch/logwatch.conf.erb'),
  }

  file { '/etc/logwatch/conf/ignore.conf':
    ensure  => present,
    owner   => root,
    group   => root,
    mode    => '0644',
    content => template('logwatch/ignore.conf.erb'),
  }

}
