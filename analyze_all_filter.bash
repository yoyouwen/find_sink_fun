filelist0=$(ls *.trace)
for file in ${filelist0}
do
echo cat $file | grep "trace_log.cc:" | cut -d']' -f2 | cut -d' ' -f2 > ${file}.filtered 
cat $file | grep "trace_log.cc:" | cut -d']' -f2 | cut -d' ' -f2 > ${file}.filtered 
done
filelist=$(ls  *.filtered)
for file in ${filelist}
do
echo $file
./sink_find.bash $file >${file}.txt
done
