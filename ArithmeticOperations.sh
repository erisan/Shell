#四則演算のサンプル

#!/usr/bin/bash
  
NUM_1=100
NUM_2=200
 
echo "NUM_1 is " $NUM_1
echo "NUM_2 is " $NUM_2
 
echo "+" $((NUM_1+NUM_2))
echo "-" $((NUM_1-$NUM_2))
echo "*" $((NUM_1*$NUM_2))
echo "/" $((NUM_1/$NUM_2))
