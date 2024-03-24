#!/usr/bin/env bash
#using puppet to change our configurations file

file {'/etc/ssh/ssh_config':
	ensure => present,

content =>"

	#SSH client configuration
	host *
	IdentityFile ~/.ssh/school
	PasswordAuthentication no
	",
}
