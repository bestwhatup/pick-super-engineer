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
	return engineers[rand(engineers.count)][0..-3]
end

def featureB(name)
	firstName = name.split(' ')
	surName = firstName[1].split(//)
	puts firstName[0] + " " + surName[0] + "..."
end


def selectName(functionNumber , *searchText)
	case functionNumber
	when 1
		return pick_engineer()
	when 2
		return "Enter Your Code"
	when 3
		return featureB()
	when 4
		return "Enter Your Code"
	else
		return "plase enter number function number again"
	end
end
