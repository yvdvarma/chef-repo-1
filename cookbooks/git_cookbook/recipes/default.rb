#
# Cookbook Name:: git_cookbook
# Recipe:: default
#
# Copyright (c) 2018 The Authors, All Rights Reserved.
log "This is default git recipe"
package 'git'
package 'httpd'
user 'vikram'
cookbook_file '/tmp/afroz' do
  source 'hello'
end 
