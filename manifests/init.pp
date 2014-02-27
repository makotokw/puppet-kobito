# Public: Install Kobito(http://kobito.qiita.com/) for use with Boxen.
#
# Examples
#
#   include kobito

class kobito ($version = '1.8.10') {
  package { 'Kobito':
    provider => 'compressed_app',
    source   => "http://kobito.qiita.com/download/Kobito_v${version}.zip"
  }
}
