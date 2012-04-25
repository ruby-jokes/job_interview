module JobInterview
  module FizzBuzz

    def fizz_buzz(max)
      Array.new(max) do |i|
        j = i + 1
        val  = (j % 3 == 0 ? "Fizz" : "") +
        (j % 5 == 0 ? "Buzz" : "")
        val.empty? ?  j.to_s  : val
      end
    end
  end
end
