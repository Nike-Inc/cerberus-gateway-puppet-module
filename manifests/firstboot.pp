class gateway::firstboot inherits gateway {
  include first-boot
  file { '/opt/puppet/first-boot.d/30gateway.pp':
    source  => 'puppet:///modules/gateway/first-boot.d/30gateway.pp',
    mode    => '0755',
    require => File['/opt/puppet/first-boot.d'],
  }
}
