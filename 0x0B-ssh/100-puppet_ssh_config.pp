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
    mode    => '0644',
    content => "
    # Global settings that apply to all hosts
    Host *
    # Use a specific identity file
    IdentityFile ~/.ssh/school
    # Disable passwords
    BatchMode yes
    ",
  }

  # Notify SSH to reload the configuration
  service { 'ssh':
    ensure     => running,
    enable     => true,
    subscribe  => File[$ssh_config_path],
  }
}

# Include the class to apply the configuration
include ssh_config
