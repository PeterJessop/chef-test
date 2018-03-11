package 'tree'
package 'powershell'
package 'ntp'
package 'git' do
  action :install
end


file '/etc/motd' do
  content 'This server is the property of Peter Jessop'
  owner 'root'
  group 'root'
end
service 'ntpd' do
  action [:enable, :start]
end
