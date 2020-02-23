=begin
Write your code for the 'Luhn' exercise in this file. Make the tests in
`luhn_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/luhn` directory.
=end

class Luhn 

    def self.valid?(card_number)
        
        card_number = card_number.gsub(/[ ]/,'')
        return false unless card_number =~ /^[0-9]*$/
        return false unless card_number.length > 1
        
        digits = card_number.chars.map { |x| x.to_i}
        i = digits.length - 2
        while i >=0 do
            digits[i] = digits[i].to_i*2 > 9 ? digits[i].to_i*2 -9 : digits[i].to_i*2
            i = i -2
        end
       return digits.sum % 10 == 0
    end
end