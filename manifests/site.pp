include etckeeper

node /^puppet[.]\w+[.]\w+$/ {
  include r10k
  include eyaml
  # Configure puppetdb and its underlying database
  class { 'puppetdb': }
  # Configure the Puppet master to use puppetdb
  class { 'puppetdb::master::config': }
}
node /^node[.]\w+[.]\w+$/ {
  include buildtools
  include apache
  include hierasample
  Class["buildtools"] -> Class["apache"] ->Class["hierasample"]
}

node /^rhel\d$/ {
  include buildtools
  include ntp
  include firewall
}

node focal {
  include buildtools
  include ntp
  include firewall
}

case $::osfamily {
  'Debian': {
     include apt
   }
}

include hierasample::secrets
