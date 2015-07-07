# diskimage-builder-env

Spin up an environment for building images with [diskimage-builder](https://github.com/openstack/diskimage-builder).

## Supported Platforms

Tested And Validated On
- CentOS 7.0

## Usage
Spin up configured VM:
```
bundle exec kitchen conv
```

Login:
```
bexec kitchen login
sudo su -
```

Build an image (rhel7 example):
```
disk-image-create rhel7
```

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
Copyright (c) 2015 Jacob McCann, All Rights Reserved.
```
