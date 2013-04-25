class kobito {
  package { 'Kobito':
    provider => 'compressed_app',
    source   => 'http://kobito.qiita.com/download/Kobito_v1.4.0.zip'  
  }
}
