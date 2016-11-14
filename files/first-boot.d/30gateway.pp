exec { 'download gateway config':
    notify => Service['nginx'],
    command => '/usr/local/bin/gateway_dl_config',
}

service { 'nginx':
    ensure  => true,
}