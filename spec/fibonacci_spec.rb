require "spec_helper"
module FibonacciSpec
  include JobInterview::Fibonacci


  describe "When called" do
    it "should return the fibinacci sequence" do
      fib(10).should be [1, 1, 2, 3, 5, 8, 12, 20, 32, 52]
    end
  end


end
