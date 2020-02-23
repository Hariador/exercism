=begin
Write your code for the 'Clock' exercise in this file. Make the tests in
`clock_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/clock` directory.
=end

class Clock 

    attr_reader :hours, :mins
    def initialize(time)

        @hours = time[:hour] ? time[:hour] : 0
        @mins = time[:minute] ? time[:minute] : 0
        self.calc
        
    end

    def to_s
         sprintf("%02d:%02d",@hours,@mins)
    end

    def +(clock)
        
        @mins = @mins + clock.mins
        @hours = @hours + clock.hours
        self.calc
        return self
    
    end

    def -(clock)
        
        @mins = @mins - clock.mins
        @hours = @hours - clock.hours
        self.calc
        return self
    
    end

    def ==(clock)
        return @mins == clock.mins && @hours == clock.hours
    end

    def calc
        if @mins > 59
            @hours = @hours + @mins / 60
            @mins = @mins % 60
        end
        if @mins < 0
            @hours = @hours - (@mins / -60 + 1)
            @mins = @mins + ((@mins / -60 + 1) * 60)
        end
        if @mins == 60
            @mins = 0
            @hours = @hours + 1
        end
        @hours =  @hours % 24
    end

end


