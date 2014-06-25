node default {
  class { '::unrealirc':
  }
  unrealirc::config::set { 'network':
    network_name =>             "Public Name of My Server",
    default_server =>           "irc.myserver.org",
    services_server =>          "services.myserver.org",
    kline_address =>            "contact@myserver.org",
  }
  unrealirc::config::listen { 'default_6667':
    port => 6667,
  }
  unrealirc::config::set { 'server':
    maxchannelsperuser => 100,
    help_channel       => '#help'
  }
  unrealirc::config::set { 'cloak_keys':
    cloak_keys_1      => 'SH6RHaDgUqCwNz5sqHQN',
    cloak_keys_2      => 'wEPSm8wcHhf24GXhfF3s',
    cloak_keys_3      => 'PbbN4WAHK6ws7QqRYf2q',
    hiddenhost_prefix => 'kirc',
  }
  unrealirc::config::set { 'hosts':
    hosts_global         => "irc.kainos.com",
    hosts_admin          => "admin.irc.kainos.com",
    hosts_servicesadmin  => "services.irc.kainos.com",
    hosts_netadmin       => "net.irc.kainos.com",
    hosts_coadmin        => "coadmin.irc.kainos.com",
  }
  unrealirc::config::allow { 'all':
    ip       => '*',
    hostname => '*',
  }
}

#File { backup => main }

Exec { path => "/usr/bin:/usr/sbin/:/bin:/sbin" }
