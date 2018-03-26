resource_name :hello_httpd
property :greeting, :kind_of => String

default_action :create
action :create do
  package platform_package_httpd
  service platform_service_httpd do
    action [:enable, :start]
  end

  cookbook_file '/var/www/html/index.html' do
    source 'index.html'
    mode  '0644'
  end
end
