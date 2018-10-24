default['liferay']['download_url'] = "https://downloads.sourceforge.net/project/lportal/Liferay%20Portal/7.0.2%20GA3/liferay-ce-portal-tomcat-7.0-ga3-20160804222206210.zip"
default['liferay']['install_location'] = '/var/liferay'
default['tomcat']['start']     ="#{node['liferay']['install_location']}/liferay-ce-portal-7.0-ga3/tomcat-8.0.32/bin/"
