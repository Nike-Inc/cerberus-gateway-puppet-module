class gateway::config inherits gateway {  

    package { 'ensure-pycrypto-installed':
        name    => 'python-crypto',
        ensure  => installed,
    }

    package { 'boto3':
        ensure   => 'latest',
        provider => 'pip',
    }

    package { 'ensure-jq-installed':
        name    => 'jq',
        ensure  => installed,
    }

    file { '/usr/local/bin/s3_get_enc_object.py':
        owner   => 'root',
        group   => 'root',
        mode    => '0755',
        content => template("gateway/s3_get_enc_object.py.erb"),
    }

    file { '/usr/local/bin/gateway_dl_config':
        ensure  => file,
        owner   => 'root',
        group   => 'root',
        mode    => '0755',
        content => template("gateway/gateway_dl_config.erb"),
        require => Class['gateway::install'],
    }

    file { '/etc/init/gateway_dl_config.conf':
        ensure  => file,
        owner   => 'root',
        group   => 'root',
        mode    => '0644',
        content => template("gateway/gateway_dl_config.conf.erb"),
        require => Class['gateway::install'],
    }

    file { '/var/log/nginx':
        ensure  => 'directory',
        owner   => 'www-data',
        group   => 'adm',
        mode    => '0755',
        require => Class['gateway::install'],
    }

    file { '/etc/init/gateway.conf':
        ensure  => file,
        owner   => 'root',
        group   => 'root',
        mode    => '0644',
        content => template("gateway/gateway.conf.erb"),
        require => Class['gateway::install'],
    }

    file { '/etc/init/nginx.override':
        ensure  => file,
        owner   => 'root',
        group   => 'root',
        mode    => '0644',
        content => template("gateway/nginx.override.erb"),
        require => Class['gateway::install'],
    }

}