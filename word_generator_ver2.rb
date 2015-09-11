class Generator
    @@vowels = ["a", "e", "i", "o", "u", "y"]
    @@accented_vowels = ["à", "á", "ä", "ā", "è", "é", "ê", "ë", "î", "ö", "ó", "ü", "ú"]
    @@consonants = ["b", "c", "d", "f", "g", "h", "j", "l", "m", "n", "p", "s", "t", "v"]
    @@double_consonants = ['gy', 'ch', 'th', 'fh', 'cv', 'vr', 'll']
    @@vowels_ensemble = @@vowels + @@accented_vowels + @@vowels + @@vowels + @@vowels
    @@consonants_ensemble = @@consonants + @@double_consonants
    
    def self.one_letter
        @@vowels_ensemble.sample
    end
    
    def self.two_letters
        value = [1, 2].sample
        if value == 1
            result = @@vowels_ensemble.sample + @@consonants.sample
            result
        else
            result = @@consonants.sample + @@vowels_ensemble.sample
            result
        end
    end
    
    def self.three_letters
        value = [1, 2, 3].sample
        first_pattern = @@vowels_ensemble + @@consonants
        if value ==1
            result = first_pattern.sample + first_pattern.sample + first_pattern.sample
            result
        elsif value == 2
            result = @@vowels_ensemble.sample + @@double_consonants.sample
            result
        else
            result = @@double_consonants.sample + @@vowels_ensemble.sample
        end
    end
    
    def self.four_letters
        one = @@vowels_ensemble.sample
        two = @@vowels_ensemble.sample
        three = @@consonants.sample
        four = @@consonants.sample
        result = [one, two, three, four].shuffle.join
        result
    end
            
            
end

puts Generator.one_letter
puts Generator.two_letters
puts Generator.three_letters
puts Generator.four_letters

    