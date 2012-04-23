require "spec_helper"
module FibonacciSpec
  


  describe "When called" do
    before(:each) do
      @answer = JobInterview::Answer.new
    end
    
    it "should return the fibinacci sequence" do
      @answer.fib(10).should == [1, 1, 2, 3, 5, 8, 12, 20, 32, 52]
    end
  end


end
