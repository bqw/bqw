#!/bin/bash

## the actual arc engine
yes | apt-get install mzscheme
cd /usr/local/src/
wget http://ycombinator.com/arc/arc3.1.tar
tar xvf arc3.1.tar
mv arc3.1 /usr/local/lib/

## with-readline (for convinience)
wget http://www.greenend.org.uk/rjk/2005/with-readline-0.1.tar.bz2
tar xvf with-readline-0.1.tar.bz2
cd with-readline-0.1
./configure && make && make install
cd ..

## the arc command
echo -e "#!/bin/bash\nwith-readline mzscheme -f as.scm" > /usr/local/bin/arc
chmod a+x /usr/local/bin/arc

