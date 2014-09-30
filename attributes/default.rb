default['php-igbinary']['url'] = 'https://github.com/igbinary/igbinary/archive/master.tar.gz'
default['php-igbinary']['compact_string'] = true

case platform_family
	when "rhel", "fedora"

		default['php-igbinary']['conf_dirs'] = ['/etc/php.d']
		default['php-igbinary']['conf_file'] = 'igbinary.ini'

	when "debian"

		default['php-igbinary']['conf_dirs'] = ['/etc/php.d']
		default['php-igbinary']['conf_file'] = '20-igbinary.ini'

end
