=begin
Write your code for the 'Isogram' exercise in this file. Make the tests in
`isogram_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/isogram` directory.
=end

class Isogram 

    def self.isogram?(input)
        if input.length <= 0
            return true
        end

        sorted = input.downcase.gsub(/\W/, "").chars.sort
        sorted.each_with_index do |x,i|
            if sorted[i] == sorted[i+1]
                return false
            end
            true
        end
    end
end


