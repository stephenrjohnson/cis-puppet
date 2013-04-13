class cis::linuxcontrols::c0088 {
# CIS RHEL6 9.2.4
  file {'/usr/local/sbin/f0007.sh':
    source => 'puppet:///modules/cis/linuxcontrols/scripts/f0007.sh',
    owner  => root,
    group  => root,
    mode   => '0700',
}
  if $f0007 == 'fail' {
    warning('Node $fqdn failed CIS RHEL6 Control 9.2.4 (f0007)')
  }
}
