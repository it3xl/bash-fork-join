


printf '  starting %(%H:%M:%S)T\n';
echo

{
  printf '  op1 running %(%H:%M:%S)T\n';
  sleep 15s
  printf '  op1 done %(%H:%M:%S)T\n';
} > op1.txt &
pid1=$!
printf '  op1 started %(%H:%M:%S)T\n';

{
  printf '  op2 running %(%H:%M:%S)T\n';
  steper2=0
  sleep 10s
  printf '  op2 done %(%H:%M:%S)T\n';
} > op2.txt &
pid2=$!
printf '  op2 started %(%H:%M:%S)T\n';

wait $pid1 && echo success op1 || echo failure op1
wait $pid2 && echo success op2 || echo failure op2

echo
cat < op1.txt

echo
cat < op2.txt

echo
printf '  done %(%H:%M:%S)T\n'





