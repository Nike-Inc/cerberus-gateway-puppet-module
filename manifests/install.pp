class gateway::install inherits gateway {    
    package { 'nginx':
        ensure => installed,
    }

    service { 'nginx':
        ensure  => true,
        enable  => true,
        require => Package['nginx'],
    }
}