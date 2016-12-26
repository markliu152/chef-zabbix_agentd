#
# Cookbook Name:: zabbix_agent_lite
# Recipe:: default
#
# The MIT License (MIT)
#
# Copyright (c) 2016 cduong13

default['zabbix_agent_lite']['version'] = '3.2'

default['zabbix_agent_lite']['repo_rpm_url'] = {
  '3.2' => {
    'centos' => {
      '7' => {
        'x86_64' => {
          'url' => 'http://repo.zabbix.com/zabbix/3.2/rhel/7/x86_64/',
          'package' => 'zabbix-release-3.2-1.el7.noarch.rpm'
        }
      }
    }
  }
}
