# (private)
class logwatch::params {
  $mailfrom     = "Logwatch@${::fqdn}"
  $mailto       = 'root'
  $ignore_lines = []
}
