#/bin/bash

command='hadoop jar /usr/local/hadoop/share/hadoop/tools/lib/hadoop-streaming-2.7.3.jar -files mapper.py,reducer.py -mapper mapper.py -reducer reducer.py'
mv='hadoop fs -mv '
rm='hadoop fs -rm -r '
cp2local='hadoop fs -copyToLocal '
cpflocal='hadoop fs -copyFromLocal '
input='wordcountinput'
eval "$rm -f tempoutput*"
eval "$rm -f tempinput_merge*"


echo "Copying Files"
eval "$cpflocal *.txt $input "
output="tempoutput"
eval "$command -input $input/* -output $output"
echo "INPUT: $input, OUTPUT: $output"
input=$output
eval "$rm $input/_SUCCESS"

mkdir ./result
eval "$cp2local $output/* ./result"

