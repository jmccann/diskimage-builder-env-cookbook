name             'diskimage-builder-env'
maintainer       'Jacob McCann'
maintainer_email 'jacob.mccann2@target.com'
license          'Apache 2.0'
description      'Installs/Configures diskimage-builder-env'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '1.0.0'

depends 'yum'
depends 'yum-epel', '0.6.0'
depends 'openstack-common'
