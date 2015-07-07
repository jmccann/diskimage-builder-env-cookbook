#
# Cookbook Name:: diskimage-builder-env
# Recipe:: default
#
# Copyright (c) 2015 Jacob McCann, All Rights Reserved.

include_recipe 'yum'
include_recipe 'yum-epel'
include_recipe 'openstack-common::default'

package 'git'
package 'qemu'
package 'dib-utils'

git '/root/diskimage-builder' do
  repository 'https://github.com/openstack/diskimage-builder.git'
  revision 'master'
  action :sync
end

cookbook_file '/root/.bash_profile'
