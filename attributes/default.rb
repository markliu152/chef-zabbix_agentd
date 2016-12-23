#
# Cookbook Name:: zabbix_agent_lite
# Recipe:: default
#
# The MIT License (MIT)
#
# Copyright (c) 2016 cduong13

default['zabbix_agent_lite']['version'] = '3.2'

# Platform specific
case node['platform']
when 'ubuntu'
  default['zabbix_agent_lite']['apt_uri'] =
    "https://repo.zabbix.com/zabbix/" \
    "#{node['zabbix_agent_lite']['version']}/ubuntu"
else
  Chef::Log.fatal!("Unsupported platform #{node['platform']}")
end
