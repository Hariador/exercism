=begin
Write your code for the 'Word Count' exercise in this file. Make the tests in
`word_count_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/word-count` directory.
=end

class Phrase 
    def initialize(sentence)
        @sentence = sentence.downcase.gsub(/[.,:!@#$%^&*()]/, ' ')
        
        splitPhrase = @sentence.split(" ")
        @wordHash = Hash.new
        splitPhrase.each do |word|
            if word[0] == '\''
                word[0] = ''
                word[word.length-1] = ''
            end
            if @wordHash.has_key?(word)
                @wordHash[word] = @wordHash[word]+1
            else
                @wordHash[word] = 1
            end
        end
    end

    def word_count
        @wordHash
    end
end

