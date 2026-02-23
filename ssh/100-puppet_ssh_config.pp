file { '/home/vagrant/.ssh/config':
  ensure => 'present',
}

file_line { 'Turn off passwd auth':
  path  => '/home/vagrant/.ssh/config',
  line  => '    PasswordAuthentication no',
  match => 'PasswordAuthentication',
}

file_line { 'Declare identity file':
  path  => '/home/vagrant/.ssh/config',
  line  => '    IdentityFile ~/.ssh/school',
  match => 'IdentityFile',
}
