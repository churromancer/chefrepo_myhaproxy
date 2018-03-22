# chef-repo/cookbooks/myhaproxy/recipes/default.rb
#
# Cookbook Name:: myhaproxy
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

node.default['haproxy']['members'] = [{
    'hostname' => 'ip-172-31-13-207.us-west-1.compute.internal', # these values come from the Vagrantfile
    'ipaddress' => '172.31.13.207', # or the public IP and hostname is using a cloud provider
    'port' => 80,
    'ssl_port' => 80
  },
  
  {
    'hostname' => 'ip-172-31-11-151.us-west-1.compute.internal', # these values come from the Vagrantfile
    'ipaddress' => '172.31.11.151', # or the public IP and hostname is using a cloud provider
    'port' => 80,
    'ssl_port' => 80
  }
]

include_recipe 'haproxy::manual'