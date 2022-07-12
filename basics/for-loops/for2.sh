#!/bin/bash

# Looping over 1 2 3 4 5
echo "Looping over 1 2 3 4 5"
for i in 1 2 3 4 5
do
   echo "Welcome $i times"
done

# Looping over range 1-5
echo "Looping over range 1-5"
for i in {1..5}
do
   echo "Welcome $i times"
done


# Looping over range 1-5 using seq command
echo "Looping over range 1-5"
echo "using seq command"
for i in $(seq 1 5)
do
   echo "Welcome $i times"
done

# Looping and incrementing variable value
echo "Looping and incrementing variable value"
for (( c=1; c<=5; c++ ))
do  
   echo "Welcome $c times"
done

echo "Script execution completed."
