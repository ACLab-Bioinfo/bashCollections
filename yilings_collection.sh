# C034-3_1.fastq.gz to C034-3_R1.fastq.gz
# 使用sed替换，正则表达式第1个（）括号里面代表文件名即\1；中间_代表分隔符；
# 第2个括号里面代表后缀.fastq.gz内容即\2；
for file in `ls C034*.fastq.gz`;do mv $file `echo $file|sed 's/\(.*\)\_\(.*\)/\1_R\2/g'`;done;