include_recipe 'munin::dependency'

node.validate! do
  { munin: { master: {} } }
end

# TODO: implement logics to install munin-master

# config = YAML.load_file(File.join(__dir__, 'master.yml'))

# service 'munin' do
#   action [:enable, :start]
# end
