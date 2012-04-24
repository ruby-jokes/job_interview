require 'prime'

module JobInterview
  module Primes
    
    def primes(n)
      p = Prime.each
      
      acc = []
      n.times do
        acc << p.next
      end
      
      return acc
    end
    
  end
end