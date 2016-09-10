epel_installed = run_command(
  'test -n "$(yum list installed | grep epel-release)"',
  error: false
).success?

package 'epel-release'

file '/etc/yum.repos.d/epel.repo' do
  action :edit
  block do |content|
    content.sub!('enabled=1', 'enabled=0')
  end
  not_if epel_installed
end
