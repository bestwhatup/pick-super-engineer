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
	text = searchText.join
	engineers = Array.new() 
	#loop read engineer list and add to engineer array
	File.read("engineers.txt").each_line do |line|
		engineers.push(line)
	end

	for num in 0...engineers.size
	  if engineers[num].include? ("#{text}")		
		puts engineers[num]
		break
	  end  
	end
end

def featureA(nameRandom) 
  if nameRandom.include?(' ')
     nameRandom.gsub!(/ /, '.')
  end
  puts nameRandom
end

def featureB(name)
	firstName = name.split('.')
	surName = firstName[1].split(//)
	puts firstName[0] + " " + surName[0] + "..."
end

if __FILE__ == $0
	randomName = pick_engineer()
    featureA(randomName)
    featureB(randomName)
    featureC(ARGV)
end
