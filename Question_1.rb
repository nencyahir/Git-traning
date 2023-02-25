EXPECTED_MINUTES_IN_OVEN=40

class Lasanga 
	puts "expected minutes is #{EXPECTED_MINUTES_IN_OVEN}"
 
	def remaining_minutes_in_oven(t)
	  result=EXPECTED_MINUTES_IN_OVEN-t
	  puts "remaining #{result}"
	  return result
	end

	def preparation_time_in_minutes(layer)
	  totallayer=layer * 2
	  puts "Layer #{totallayer}"
	  return totallayer
	end


	def total_time_in_minutes (time,layer)
	  final_time = remaining_minutes_in_oven(time) + preparation_time_in_minutes(layer)
	  print"Total Time:  #{final_time}"
	end
end

lasanga_obj=Lasanga.new
lasanga_obj.remaining_minutes_in_oven(20)
lasanga_obj.preparation_time_in_minutes(3)
lasanga_obj.total_time_in_minutes(20,3)
