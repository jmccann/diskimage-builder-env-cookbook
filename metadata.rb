name             'diskimage-builder-env'
maintainer       'Jacob McCann'
maintainer_email 'jacob.mccann2@target.com'
license          'all_rights'
description      'Installs/Configures diskimage-builder-env'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

depends 'yum'
depends 'yum-epel', '0.6.0'
depends 'openstack-common'