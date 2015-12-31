# Set bin directory.
bin=$(dirname $0)
echo $bin

# Acquire pdepend.
if [ ! -f $bin/phpDocumentor.phar ]; then
  wget http://static.pdepend.org/php/latest/pdepend.phar -P $bin
fi

# Acquire phpcb.phar.
if [ ! -f $bin/phpcb.phar ]; then
  wget -c https://github.com/bytepark/php-phar-qatools/raw/master/phpcb.phar -P $bin
fi

# Acquire phpcs.phar.
if [ ! -f $bin/phpcs.phar ]; then
  wget -c https://squizlabs.github.io/PHP_CodeSniffer/phpcs.phar -P $bin
fi

if [ ! -f $bin/phpcbf.phar ]; then
  wget -c https://squizlabs.github.io/PHP_CodeSniffer/phpcbf.phar -P $bin
fi

# Acquire phpDocumentor.
if [ ! -f $bin/phpDocumentor.phar ]; then
  wget http://www.phpdoc.org/phpDocumentor.phar -P $bin
  chmod +x $bin/phpDocumentor.phar
fi

# Acquire phpmd.phar.
if [ ! -f $bin/phpmd.phar ]; then
  wget -c http://static.phpmd.org/php/latest/phpmd.phar -P $bin
fi

# Acquire phpunit.phar.
if [ ! -f $bin/phpunit.phar ]; then
  wget https://phar.phpunit.de/phpunit.phar -P $bin
  chmod +x $bin/phpunit.phar
fi
