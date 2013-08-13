#!/bin/sh
# http://developer.apple.com/search/index.php?q=java
# Search for "Java for Mac OS X 10.? update"
ctags -R --language-force=java -f.java-tags /Library/Java/JavaVirtualMachines/1.6.0_29-b11-402.jdk/Contents/Home/src
