# Itamae::Plugin::Recipe::Munin

Itamae plugin to install munin-master and munin-node

## Installation

Add this line to your itamae's Gemfile:

```ruby
gem 'itamae-plugin-recipe-munin'
```

And then execute:

    $ bundle

## Usage

### munin-master

Install munin-master (This recipe does not implement yet.)

#### Recipe

```ruby
# your recipe
include_recipe 'munin::master'
```

#### Node

Use this with `itamae -y node.yml`

```yaml
# node.yml
munin:
  master:
    # TODO
```

### munin-node

Install munin-node

#### Recipe

```ruby
# your recipe
include_recipe 'munin::node'
```

#### Node

Use this with `itamae -y node.yml`

ref.) [official document](http://guide.munin-monitoring.org/en/latest/reference/munin-node.conf.html)

```yaml
# node.yml
munin:
  node:
    host_name: example-host
    allows:
      - ^10\.0\.0\.10$
      - ^10\.0\.0\.11$
    ignore_files:
      - ^README$
    log_level: 4
    log_file: /var/log/munin-node/munin-node.log
    port: 4949
    pid_file: /var/run/munin/munin-node.pid
    background: 1
    host: '*'
    user: root
    group: root
    setsid: 1
    timeout: 1
    global_timeout: 15
```

#### Notice

If you enabled SELinux, you may not be able to start munin-node.

## License

MIT

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/pataiji/itamae-plugin-recipe-munin.
