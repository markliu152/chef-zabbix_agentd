#
# Cookbook Name:: zabbix_agent_lite
# Recipe:: repo
#
# The MIT License (MIT)
#
# Copyright (c) 2016 cduong13


case node['platform']
when 'ubuntu'
  include_recipe 'apt::default'

  apt_repository 'repo.zabbix.com' do
    uri node['zabbix_agent_lite']['apt_uri']
    distribution node['lsb']['codename']
    components ['main']
    key 'https://repo.zabbix.com/zabbix-official-repo.key'
    action :add
  end
end
