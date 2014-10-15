# Module installing and managing logwatch
class logwatch (
  $mailfrom = $logwatch::params::mailfrom,
  $mailto   = $logwatch::params::mailto,
) inherits logwatch::params {
  contain logwatch::install
  contain logwatch::config

  Class['logwatch::install'] ->
  Class['logwatch::config']
}
