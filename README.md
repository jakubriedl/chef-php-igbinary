# php-igbinary-cookbook

Chef cookbook to download and install the PHP extension igbinary - https://github.com/igbinary/igbinary


## Attributes

```
node['php-igbinary']['url'] = 'https://github.com/igbinary/igbinary/archive/master.tar.gz'
node['php-igbinary']['compact_string'] = true
node['php-igbinary']['conf_dirs'] = ['/etc/php.d']
node['php-igbinary']['conf_file'] = 'igbinary.ini'
```

## Usage

### php-igbinary::default

Include `php-igbinary` in your node's `run_list`. This will download and install igbinary.

```json
{
  "run_list": [
    "recipe[php-igbinary::default]"
  ]
}
```

## Contributing

1. Fork the repository on Github
2. Create a named feature branch (i.e. `add-new-recipe`)
3. Write you change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request
