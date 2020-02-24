=begin
Write your code for the 'Matrix' exercise in this file. Make the tests in
`matrix_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/matrix` directory.
=end

class Matrix 

    def initialize(source)
        @m = []
        source.split("\n").each do |row|
            @m.push row.split.map { |x| x.to_i}
        end
    end

    def rows
        @m
    end

    def columns
        max = @m.length
        a = Array.new(max) {Array.new(max)}
        i = 0
        j = 0
        while i < max
            while j < max
                a[j][i] = @m[i][j]
                j = j + 1
            end
            j = 0
            i = i + 1
        end
        return a
    end
end


