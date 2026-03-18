read -p "Enter a number: " num

sum=0
temp=$num

while [ $temp -gt 0 ]
do
  digit=$((temp % 10))
  sum=$((sum + digit * digit))
  temp=$((temp / 10))
done

echo "Sum of squares of digits = $sum"
