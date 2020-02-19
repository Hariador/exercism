=begin
Write your code for the 'Series' exercise in this file. Make the tests in
`series_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/series` directory.
=end

class Series 

    def initialize(series)
        @source = series
     
    end

    def slices(size)
        if size > @source.length
            raise ArgumentError.new('Size slice too large')
        end
        i = 0
        result = []
        @source.length
        while i < (@source.length - size + 1) do
            result.push(@source[i..i+size-1])
            i= i+1
        end
        result
    end
end
