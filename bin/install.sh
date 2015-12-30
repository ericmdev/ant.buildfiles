# Define bin directory.
bin=$(dirname $0)
echo $bin

# Define files.
pdepend=$bin/phpDocumentor.phar
phpdoc=$bin/phpDocumentor.phar
phpmd=$bin/phpmd.phar
phpcb=$bin/phpcb.phar

# Acquire pdepend.
if [ ! -f $pdepend ]; then
  wget http://static.pdepend.org/php/latest/pdepend.phar -P $bin
  chmod +x $pdepend
fi

# Acquire phpDocumentor.
if [ ! -f $phpdoc ]; then
  wget http://www.phpdoc.org/phpDocumentor.phar -P $bin
  chmod +x $phpdoc
fi

# Acquire phpmd.phar.
if [ ! -f $phpmd ]; then
  wget -c http://static.phpmd.org/php/latest/phpmd.phar -P $bin
  chmod +x $phpmd
fi

# Acquire phpcb.phar.
if [ ! -f $phpcb ]; then
  wget -c https://github.com/bytepark/php-phar-qatools/raw/master/phpcb.phar -P $bin
  chmod +x $phpcb
fi
