#!/bin/bash

# A simple shell function to calculate the Nth Fibonacci number
# $1: The (N)th number to calculate

fib() {
  N=$1
  a=0
  b=1
  
  if [ $N -eq 0 ]; then
    echo $a
    return
  fi

  for ((i=2; i<=N; i++)); do
    temp=$((a + b))
    a=$b
    b=$temp
  done
  
  echo $b
}

# --- Main script execution ---

# Set which Fibonacci number you want to find
NUMBER_TO_CALCULATE=30

echo "Calculating the Fibonacci number for: $NUMBER_TO_CALCULATE"

# Call the function and store the result
RESULT=$(fib $NUMBER_TO_CALCULATE)

echo "-------------------------------------"
echo "Result: $RESULT"
echo "-------------------------------------"
