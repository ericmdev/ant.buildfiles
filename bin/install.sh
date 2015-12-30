# Define bin directory.
bin=$(dirname $0)
echo $bin

# Define files.
pdepend=$bin/phpDocumentor.phar
phpdoc=$bin/phpDocumentor.phar

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
