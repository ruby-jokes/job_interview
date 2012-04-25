require 'prime'

module JobInterview
  module Primes
    
    def primes(n)
      Prime.each.take(n)
    end
    
  end
end
