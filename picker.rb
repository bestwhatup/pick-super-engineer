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

def featureA(textRandom)
  puts textRandom
  nameRandom = textRandom 
  if nameRandom.include?(' ')
     nameRandom.gsub!(/ /, '.')
  end
  #puts nameRandom
end

def selectName(functionNumber , *searchText)
	case functionNumber
	when 1
		return pick_engineer()
	when 2
		f1 = pick_engineer()
                featureA(f1)
	when 3
		return "Enter Your Code"
	when 4
		return "Enter Your Code"
	else
		return "plase enter number function number again"
	end
end
