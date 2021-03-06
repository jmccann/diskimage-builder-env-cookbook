# diskimage-builder-env

Spin up an environment for building images with [diskimage-builder](https://github.com/openstack/diskimage-builder).

## Supported Platforms

Tested And Validated On
- CentOS 7.0

CentOS 6.x fails when attempting to untar base img so it will not be supported.

## Usage
Spin up configured VM:
```
bundle exec kitchen conv
```

Login:
```
bundle exec kitchen login
sudo su -
```

Build an image (rhel7 example):
```
disk-image-create -o ~/cache/rhel7.qcow2 rhel7
```

Now on your host system you should find cache/rhel7.qcow2 (relative to this repo's location).

## Testing

* Linting - Rubocop and Foodcritic
* Spec - ChefSpec
* Integration - Test Kitchen

```
bundle exec foodcritic -f any -X spec .
bundle exec rspec --color --format progress
bundle exec rubocop
```

## License and Authors

Author:: Jacob McCann (<jacob.mccann2@target.com>)

```text
Copyright (c) 2015 Jacob McCann, Apache 2.0
```
