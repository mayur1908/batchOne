for((i=0;i<10;i++))
do
  num[$i]=$(( RANDOM % 900 + 100 ))
done
echo "Unsorted Array: ${num[*]}"
sorted_num=($(echo "${num[@]}" | tr ' ' '\n' | sort -n))
echo "Sorted Array: ${sorted_num[*]}"
n=${#sorted_num[@]}
if [ "$n" -lt 2 ]; then
  echo "Array too small"
else
  second_smallest=${sorted_num[1]}
  second_largest=${sorted_num[n-2]}
  echo "Second smallest element: $second_smallest"
  echo "Second largest element: $second_largest"
fi
