class profile::ssh_server {
  package { 'openssh-server':
    ensure => present,
  }
  service { 'sshd':
    ensure => 'running',
    enable => 'true',
  }
  ssh_authorized_key { 'root@master.puppet.vm':
    ensure => present,
    user => 'root',
    type => 'ssh-rsa',
    key => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDIyRxK6XGquXLvVBRRlIFl87IqXsjZnFfLK9pW/SRHKMix+SkdsuPS86sMqvcfEm4qF0vEtSwbb1e5QjkkncJ7JbQ01n2R01FObIhrWfJ9+L2FtO+ylDO3Yi8uWh9zh0+pOGDTQYYT8a4zAL+haX+kA7X44xuhSQIj1udGt9GrBj5pxeRccI0jJmjYi4dUA7CZDTrvRNeKJuGOt9vkGoqWruISaEWbuNTVIxIZVs2a/xuxlkR7GZ6pPt6b9U2AFmyN2FbDFG92OJQ+SNtztQBStuXCPnZ8WrcLVc82955aAOXyi2DO+aSecTZY4ujWr2pQwOXvJZqN/jrtV18+rBLd',
  }
}
