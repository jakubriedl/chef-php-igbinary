remote_file "#{Chef::Config[:file_cache_path]}/igbinary.tar.gz" do
  source "#{node['php-igbinary']['url']}"
end

bash 'make & install igbinary' do
  cwd Chef::Config[:file_cache_path]
  code <<-EOF
	  tar zxf igbinary.tar.gz
	  cd igbinary-master
	  phpize
	  ./configure
	  make && make install
  EOF
end

node['php']['conf_dirs'].each do |conf_dir|
	template "#{conf_dir}/#{node['php-igbinary']['conf_file']}" do
		source "igbinary.ini.erb"
		owner "root"
		group "root"
		mode 0644
	end
end
