#
# Cookbook Name:: zabbix_agentd
# Recipe:: apt_repo
#
# The MIT License (MIT)
#
# Copyright (c) 2016 cduong13

include_recipe 'apt::default'

zabbix_release = node['zabbix_agentd']['version'].match(/\d*\.\d*/).to_s

case node['platform']
when 'ubuntu'
  apt_repository 'repo.zabbix.com' do
    uri "https://repo.zabbix.com/zabbix/#{zabbix_release}/ubuntu"
    distribution node['lsb']['codename']
    components ['main']
    key 'https://repo.zabbix.com/zabbix-official-repo.key'
    action :add
  end
end
