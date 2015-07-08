#
# Cookbook Name:: diskimage-builder-env
# Recipe:: default
#
# Copyright (c) 2015 Jacob McCann, All Rights Reserved.

include_recipe 'yum'
include_recipe 'yum-epel'
include_recipe 'openstack-common::default'

package 'git'
package 'dib-utils'
package 'PyYAML'

package 'qemu'

git '/root/diskimage-builder' do
  repository 'https://github.com/openstack/diskimage-builder.git'
  revision 'master'
  action :sync
end

cookbook_file '/root/.bash_profile'

# Fix installing DIB_SAT_CERT_RPM_URL ... contrib back
# 'Update' /usr/share/rhn/RHNS-CA-CERT ... contrib back
cookbook_file '/root/diskimage-builder/elements/rhel-common/pre-install.d/00-rhsm'
