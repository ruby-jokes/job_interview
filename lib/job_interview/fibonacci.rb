module JobInterview
  module Fibonacci

    ##
    # args should be the strategy to be used (one of :iterative, :recursive)
    # Defaults to recursive
    #
    def fib(n, *args)
      if args && args.include?(:iterative)
        iterative_fib(n)
      else
        recursive_fib(n)
      end
    end

    private
    def recursive_fib(n)
      return n if (0..1).include? n
      fib(n-1) + fib(n-2) if n > 1
    end

    def iterative_fib(n)
      result = [1, 1]

      (n - 2) .times do |i|
        result <<  result[-1] + result[-2]
      end

      return curr
    end

  end
end
