egrep "\w" $(pwd)/schema.json | awk -F\" '{ print $2 }' | while read line                                                                                              ─╯
do
if [ $line = 'items' ]
then
section=items
continue
fi
if [ $line = 'properties' ]
then
section=properties
continue
fi
echo $line | awk '{ x = $0; gsub(" ", "_", $0); print "LBL" toupper($0) " = \"" x "\""  }'
done