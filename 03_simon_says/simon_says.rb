#write your code here

def echo(str1)
    str1
end

def shout(str1)
    str1.upcase
end

def repeat(str1, repeats = 2)
    ("#{str1} " * repeats).strip
end

def start_of_word(str1, num = 1)
    num_index = num-1
    str1[0..num_index]
end

def first_word(str1)
    str1.split[0]
end

def titleize(title)
    little_words = ["over", "the", "in", "of", "and", "or"]
    str1 = title.gsub(/\w+/) do |word|
        if !(little_words.include?(word))
            word.capitalize
        else
            word
        end 
    end
    # Ensure that the first letter of the title is a capital even if it is a little word
    str1.sub(str1[0]) { |letter| letter.upcase}
end