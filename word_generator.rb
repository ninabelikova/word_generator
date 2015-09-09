def random_word(n)
    if n < 3
        return "Number must be greater than 3."
    end
    word_array = []
    vowel_array = ["A", "E", "I", "O", "U", "Y", "EI", "AU", "OO", "AI"]
    word_array.push((rand(26)+65).chr)
    word_array.push(vowel_array.shuffle[0, 2].join)
    word_array.push(('a'..'z').to_a.shuffle[0, n-3].join)
    word_array.join.downcase
end



def welcome
    puts "Welcome to the random Nina's word generator service."
    puts "Do you want a sentence or just a word?"
    puts "(type in either 'sentence' or 'word')"
    answer = gets.chomp
    if answer.downcase == "word"
        puts "How long do you want it to be (approximately)?"
        word_length = gets.chomp.to_i
        puts "Information received."
        puts "Calculating..."
        puts "..."
        puts "Here's the result!"
        puts random_word(word_length).capitalize
        puts "Enjoy!"
    elsif answer.downcase == "sentence"
        puts "Information received."
        puts "Calculating..."
        puts "..."
        puts "Here's the result!"
        puts random_word(5).capitalize + " " + random_word(4) + " " + random_word(6) + " " + random_word(7) + " " + random_word(4) + "."
        puts "Enjoy!"
    else
        puts "I don't understand your request."
    end
end

welcome