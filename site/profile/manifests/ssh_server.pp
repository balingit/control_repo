class profile::ssh_server {
  package {'openssh-server':
    ensure => present,
  }
  service { 'sshd':
    ensure => 'running',
    enable => 'true',
  }
  ssh_authorized_key { 'root@master.puppet.vm':
    ensure => present,
    user   => 'root',
    type   => 'ssh-rsa',
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCn17jdm2nIBhTZvrrIAzdihG/iDofAA/egTRBJ/aLVI1kRZxnNZaJSYwXzmkMXw37EVscuBMxlKFcrLFpT+gFe76dyHPRra/1L60D24qthTfE1GESWWcjbGFlcK54/WF4cAY55bXdFygExXHnoUtdL4SxYVyfMeCRCZ/rzbya5EX9F0x3P2yAWanOfQmUvwQkzxQ4YcF563RDqXJxaQ+PuvGoTfdukSVFXeGO9Y+8T2JagDqg0ntm0ScGD44Tw8gf80J9nPooe+2UuQ6tsVVJlApu0uoajki5eRvOYdvdfmqyam35pgpcqNhAewpfuq9dnsNlaB/BFaDIv/2BEW4Dr',
  }  
}
