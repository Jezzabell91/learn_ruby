#write your code here

def translate(str1)
    ay = "ay"
    vowels = %w(a e i o u)
    consonants = %w(b c d f g h j k l m n p q r s t v w x y z)

    string = str1.gsub(/\w+/) do |word|
        if (vowels.include?(word[0]))
            pig_latin_result = word + ay
        elsif (consonants.include?(word[0]))
            if (consonants.include?(word[1]) || word[0..1] == "qu")
                if (consonants.include?(word[2]) || word[1..2] == "qu")
                    pig_latin_result = word[3..-1] + word[0..2] + ay
                else
                    pig_latin_result = word[2..-1] + word[0..1] + ay
                end
            else    
                pig_latin_result = word[1..-1] + word[0] + ay
            end
        end
    end
end