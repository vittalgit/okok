# Class cis::rhel7controls::c0
#
# Locks down the fstab file and enforces restrictive mount settings for the
# most commonly used mount points. Additional mounts should have the 'nodev'
# settings in most cases.
#
class cis::rhel7controls::c0 {
  file {'/etc/fstab':
    owner => root,
    group => root,
    mode  => '0600',
  }

  mount {'/tmp':
    options => 'nodev,nosuid,noexec',
  }

  mount {'/var':
    options => 'nodev',
  }

  mount {'/var/log':
    options => 'nodev',
  }

  mount {'/var/log/audit':
    options => 'nodev',
  }

  mount {'/home':
    options => 'nodev',
  }

  mount {'/opt':
    options => 'nodev',
  }

#Enable if you have shm device
 #  mount {'/dev/shm':
 #   options => 'nodev,nosuid,noexec',
 # }

  # 1.1.6
  mount {'/var/tmp':
    ensure  => 'mounted',
    device  => '/tmp',
    fstype  => 'none',
    options => 'bind',
  }
}
