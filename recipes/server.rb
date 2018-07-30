#
# Cookbook:: apache
# Recipe:: server
#
# Copyright:: 2018, The Authors, All Rights Reserved.

package 'httpd' do
	action :install
end

file 'var/www/html/index.html' do
	content "<h1> Hello World <h2>
	         <h2> IPADDRESS: #{node[ipaddress]} <h2>
		 <h2> HOSTNAME: #{node[hostname]} <h2>
                 "
end

service 'httpd' do

	action [:enable, :start]
end
