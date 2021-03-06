class course_selector::course::get_hiera2 (
  $unit = '2'
){
  file { "/etc/puppetlabs/code/environments/production/hieradata":
    ensure  => directory,
    recurse => true,
    source  => "puppet:///modules/course_selector/get_hiera/${unit}/hieradata",
  }
  file {['/etc/puppetlabs/facter','/etc/puppetlabs/facter/facts.d']:
    ensure => directory,
  }
  file {'/etc/puppetlabs/facter/facts.d/my_facts.txt':
    ensure  => file,
    content => 'app_tier=prod',
  }
}
