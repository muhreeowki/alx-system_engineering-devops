# Nginx Server Setup

exec { 'update system':
  command  => 'apt-get -y update',
  provider => shell,
}

exec { 'install nginx': 
  command  => 'apt-get -y install nginx',
  provider => shell,
}

exec { 'allow Nginx HTTP': 
  command  => 'ufw allow "Nginx HTTP"',
  provider => shell,
}

file { '/var/www/html':
  ensure => directory,
}

file { '/var/www/html/index.html': 
  ensure  => present,
  content => "Hello World!",
}

file { '/var/www/html/404.html': 
  ensure  => present,
  content => "Ceci n'est pas une page",
}

# Nginx Config File
file {'/etc/nginx/sites-available/default':
  ensure  => present,
  content => "
    server {
      listen 80 default_server;
      listen [::]:80 default_server;
      add_header X-Served-By $::hostname;
      root   /var/www/html;
      index  index.html index.htm;

      location /redirect_me {
          return 301 http://cuberule.com/;
      }

      error_page 404 /404.html;
      location /404 {
        root /var/www/html;
        internal;
      }
    }"
}

exec { 'Start Nginx':
  command  => 'service nginx restart',
  provider => shell,
}
