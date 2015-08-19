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

# Enable service with chkconfig if update.rc does not exist ... contrib back
# Update 'network' service to depend on dhcp-all-interfaces ... contrib back
cookbook_file '/root/diskimage-builder/elements/dhcp-all-interfaces/install.d/50-dhcp-all-interfaces'

# Disable RHN services
cookbook_file '/root/diskimage-builder/elements/rhel-common/finalise.d/99-disable-services' do
  mode 0755
end

# Properly detect sysv from upstart as RHEL6 has both installed but uses sysv ... contrib fix
cookbook_file '/root/diskimage-builder/elements/dib-init-system/dib-init-system'
