require 'spec_helper.rb'

module FizzBuzzSpec
  include JobInterview::FizzBuzz

  describe "FizzBuzz" do
    it "returns a list of numbers up to n" do
      fizz_buzz(5).size.should eq(5)
    end

  end
end
