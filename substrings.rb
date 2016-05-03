def substrings(user_string, dictionary)
	ans = { }
	user_array = user_string.split(' ')
	user_array.each do |word_to_search|
		word_to_search.downcase!
		puts "word to search #{word_to_search}"
		dictionary.each do |word|
			puts "Searching with #{word}"
			if word_to_search.include?(word)
				if ans.has_key?(word)
					ans[word] += 1
				else
					ans[word] = 1
				end
			end
		end
	end
	return ans
end






dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substring = "Howdy partner, sit down! How's it going?"

answer = substrings(substring, dictionary)


puts "Here are the matches: "
answer.each { |key, value| puts "#{key} => #{value}"}