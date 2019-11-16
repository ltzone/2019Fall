#/bin/bash
command1='hadoop jar /usr/local/hadoop/share/hadoop/tools/lib/hadoop-streaming-2.7.3.jar -files mapper.py -mapper mapper.py -reducer mapper.py'
command2='hadoop jar /usr/local/hadoop/share/hadoop/tools/lib/hadoop-streaming-2.7.3.jar -files rankmapper.py,reducer.py -mapper rankmapper.py -reducer reducer.py'
mv='hadoop fs -mv '
rm='hadoop fs -rm -r '
cp2local='hadoop fs -copyToLocal '
input='tempinput'
static='tempinput_0/graph'
eval "$rm -f tempoutput*"
eval "$rm -f tempinput_merge*"
for ((i=1;i<$1+1;i++));
do
    echo "No $i Iteration"
    mergeresult="tempinput_merge_$i"
    eval "$command1 -input $static,$input/* -output $mergeresult"
    output="tempoutput_$i"
    echo "INPUT: $mergeresult, OUTPUT: $output"
    eval "$command2 -input $mergeresult/* -output $output"
    input=$output
    eval "$rm $input/_SUCCESS"
done
mkdir ~/result
eval "$cp2local tempinput_merge* ~/result"
eval "$cp2local tempoutput* ~/result"
