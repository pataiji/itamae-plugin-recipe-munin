include_recipe 'munin::dependency'

node.validate! do
  { munin: { node: {} } }
end

package 'munin-node' do
  options '--enablerepo=epel'
end

config = YAML.load_file(File.join(__dir__, 'node.yml'))

template '/etc/munin/munin-node.conf' do
  owner 'root'
  group 'root'
  mode '644'
  variables(config: config.merge(node[:munin][:node]))
  notifies :restart, 'service[munin-node]'
end

service 'munin-node' do
  action [:enable, :start]
end
