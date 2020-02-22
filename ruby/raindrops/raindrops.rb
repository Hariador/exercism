=begin
Write your code for the 'Raindrops' exercise in this file. Make the tests in
`raindrops_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/raindrops` directory.
=end

class Raindrops 

    def self.convert(number)
        output = ""
        if number % 3 == 0
            output += "Pling"
        end
        if number % 5 == 0
            output += "Plang"
        end
        if number % 7 == 0
            output += "Plong"
        end
        if output == ""
            output = number.to_s
        end
        output
    end

end