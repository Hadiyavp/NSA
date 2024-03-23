#to reverse a file
#set -xv
if [ $# -ne 1 ]
then
echo "Syntax is <$0> <file name>"
exit 1
fi
if [ -d $1 ]
then
echo "$1 is a directory"
exit 2
fi
cp $1 file
line=`cat file | wc -l`
revfname="$1.rev"
rm $revfname 2>/dev/null
while [ $line -ge 1 ]
do
tail -n 1 file  >> $revfname 
line=`expr $line - 1`
head -n $line  file > temp 
mv temp file
done
