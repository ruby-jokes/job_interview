require "spec_helper.rb"
module FibonacciSpec



  describe "When called" do
    before(:each) do
      @answer = JobInterview::Answer.new
    end

    it "should return the fibinacci sequence" do
      @answer.fib(10).should == 55
    end
  end


end
