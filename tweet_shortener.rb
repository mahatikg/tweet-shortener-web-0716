# Write your code here.
def dictionary
	dict = {
		"be" => "b",
		"hello" => "hi",
		"to" => "2",
		"too" => "2",
		"two" => "2",
		"for" => "4",
		"For" => "4",
		"four" => "4",
		"you" => "u",
		"at" => "@",
		"and" => "&"
	}
end


def word_substituter(string)
	array = string.split
	array.collect! do |word|
		if dictionary.keys.include?(word)
			word = dictionary[word]
		else
			word = word
		end
  end
	string = array.join(" ")
end

def bulk_tweet_shortener(array)
	array.collect! do |tweet|
		puts word_substituter(tweet)
	end
end

def selective_tweet_shortener(string)
	if string.length < 140
    string
  else
		array = string.split
		array.collect! do |word|
			if dictionary.keys.include?(word)
				word = dictionary[word]
			else
				word = word
			end
		end
		string = array.join(" ")
	end
end

def shortened_tweet_truncator(string)
	selective_tweet_shortener(string)
	if string.length > 140
		string[137..string.length] = "..."
	else
		string
	end
	string
end
