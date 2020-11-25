file=$1
ghc $file.hs
rm $file.hi
rm $file.o