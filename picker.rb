def pick_engineer () 
	#function pick engineer
	#Description: pick an engineer from file

	#init engineers array
	engineers = Array.new() 
	#loop read engineer list and add to engineer array
	File.read("engineers.txt").each_line do |line|
		engineers.push(line)
	end
	#random engineer and show to display
	return engineers[rand(engineers.count)][0..-2]
end

def featureC(searchText)
	engineers = Array.new() 
	#loop read engineer list and add to engineer array
	File.read("engineers.txt").each_line do |line|
		engineers.push(line)
	end
		
	for num in 0...engineers.size
	  if engineers[num].include? "#{@searchText}"
		puts engineers[num]
	  end
	  break
	end
end


def selectName(functionNumber , *searchText)
	case functionNumber
	when 1
		return pick_engineer()
	when 2
		return "Enter Your Code"
	when 3
		return "Enter Your Code"
	when 4
		return featureC(searchText)
	else
		return "plase enter number function number again"
	end
end
