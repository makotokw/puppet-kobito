class kobito ($version = '1.5.0') {
  package { 'Kobito':
    provider => 'compressed_app',
    source   => 'http://kobito.qiita.com/download/Kobito_v${version}.zip'  
  }
}