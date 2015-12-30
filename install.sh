# Set bin directory.
BINDIR=$(dirname $0)/bin
echo $BINDIR

# Acquire pdepend.
wget http://static.pdepend.org/php/latest/pdepend.phar -P $BINDIR
chmod +x $BINDIR/pdepend.phar

# Acquire phpDocumentor.
wget http://www.phpdoc.org/phpDocumentor.phar -P $BINDIR
chmod +x $BINDIR/phpDocumentor.phar
