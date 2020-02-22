=begin
Write your code for the 'Hamming' exercise in this file. Make the tests in
`hamming_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/hamming` directory.
=end

class Hamming 

    def self.compute(strandA, strandB)
        if strandA.length != strandB.length
            raise ArgumentError.new('Strand length mismatch')
        end

        hamming_distance = 0
        differences = strandA.chars.map.with_index { |x,i| self.diff(x,i,strandB) }
        differences.compact!
        differences.length

    end
    
    def self.diff(value, index, strand)
        
        if strand[index] != value
            return value
        end
        
    end

end
