puts "Enter Number "
number=gets.to_i
sum=number*(number+1)/2
result=sum*sum
puts "sum of whole square of first #{number} natural numbers is #{result} "
k=1
sum_square=0
while(k<=number)
	sum_square=sum_square+(k*k)
	k=k+1
end
puts "sum of square of #{number} natural numbers is #{sum_square} "
diff=result-sum_square
puts "Diffrence is #{diff}"



