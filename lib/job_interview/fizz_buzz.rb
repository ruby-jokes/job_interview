module JobInterview
  module FizzBuzz
    
    def fizz_buzz(max)
      acc = []
      (1..max).each do |n|
        if ((n % 3 == 0) && (n % 5 == 0))
          acc << "FizzBuzz"
        elsif (n % 3 == 0)
          acc << "Fizz"
        elsif (n % 5 == 0)
          acc << "Buzz"
        else
          acc << n
        end
      end
      return acc
    end
    
  end
end