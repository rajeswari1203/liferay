#
# Cookbook:: tomcat
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.
include_recipe 'java'

tmp_path = Chef::Config[:file_cache_path]
remote_file "#{tmp_path}/liferay.zip" do
  source node['liferay']['download_url']
  mode '0644'
  action :create
end
directory node['liferay']['install_location'] do
   
  mode '0755'
  action :create
end
bash 'Extract tomcat archive' do
  cwd node['liferay']['install_location']
  code <<-EOH
    unzip  #{tmp_path}/liferay.zip
    sh "#{node['liferay']['install_location']}/liferay-ce-portal-7.0-ga3/tomcat-8.0.32/bin/startup.sh" 
  EOH

end

