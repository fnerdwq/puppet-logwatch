# (private)
class logwatch::params {
  $mailfrom     = "Logwatch@${::fqdn}"
  $mailto       = 'root'
  $services     = ['All']
  $ignore_lines = []
}
