class Sieve
    def initialize num
        @given_number = num
    end
    def primes
        if @given_number < 2
            return []
        end
        numbers = Array(2..@given_number)
        multiplier = 2
        numbers.each { |x|  
            puts "Examining #{ x }" 
            multiplier = 2
            while x*multiplier <= @given_number do
                numbers.delete(x*multiplier)
                multiplier+=1
            end
        }
        return numbers
    end
end
module BookKeeping
    VERSION = 1
  end