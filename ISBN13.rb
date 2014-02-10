#!/usr/bin/ruby

puts "Enter the ISBN number:"
$number = gets
$number =  $number.to_i 
$number_copy = $number
ary = Array.new
$i = 1
while $number_copy > 0 do
   ary[$i] = $number_copy % 10
   $number_copy = $number_copy / 10
   $i = $i + 1
end
$i = $i - 1
$top  = $i
$sum = 0
while $i > 0 do
   # Next line is for find sum , that condition inside brackets is to switch values 1 and 3 (only one condition will be true)
   $sum += ( ary[$i].to_i * (( ( $top - $i  ) % 2) * 3 + ((  $top - $i + 1) % 2) * 1 )) 
   $i = $i - 1 
end
$reminder = (10 - ($sum % 10) ) % 10   
$output = ( $number *  10 ) + $reminder
puts("The Complete ISBN13 is : #$output  ")
