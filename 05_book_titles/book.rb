class Book
    def title=(title)
        @title = title
    end
    
    def title
        little_words = %w(over the in of and or a an)
        @title = @title.gsub(/\w+/) do |word|
            if !(little_words.include?(word))
                word.capitalize
            else
                word
            end 
        end
        # Ensure that the first letter of the title is a capital even if it is a little word
        @title.sub(@title[0]) { |letter| letter.upcase}
    end



end
