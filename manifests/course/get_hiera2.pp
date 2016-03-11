class course_selector::course::get_hiera2 (
  $unit => '2'
){
  file { "/etc/puppetlabs/code/hieradata":
    ensure  => directory,
    recurse => true,
    source  => "puppet:///modules/course_selector/get_hiera/${unit}/hieradata",
  }
  file { "/etc/puppetlabs/code/hiera.yaml":
    ensure => file,
    source => "puppet:///modules/course_selector/get_hiera/${unit}/hiera.yaml",
  }
}
