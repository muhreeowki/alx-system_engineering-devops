class ssh_config {

  # Define the SSH config file path
  $ssh_config_path = '/etc/ssh/ssh_config'

  # Ensure the directory exists
  file { '/etc/ssh':
    ensure => directory,
    mode   => '0755',
  }

  # Create the SSH config file with content
  file { $ssh_config_path:
    ensure  => present,
    content => "
    Host *
    IdentityFile ~/.ssh/school
    BatchMode yes
    ",
  }
}

# Include the class to apply the configuration
include ssh_config
