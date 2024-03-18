#message
hour=`date +%H`
if [ $hour -lt 12 ]
then
echo " HELLO GOOD MORNING"
elif [ $hour -le 16 ] 
then
echo "HELLO GOOD AFTERNOON "
elif [ $hour -le 20 ] 
then
echo "HELLO GOOD EVENING "
else
echo "HELLO GOOD NIGHT "
fi
