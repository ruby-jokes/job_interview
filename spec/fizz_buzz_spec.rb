require 'spec_helper'

module FizzBuzzSpec

  describe "When called" do
    before(:each) do
      @answer = JobInterview::Answer.new
    end

    it "returns a list of numbers up to n" do
      @answer.fizz_buzz(5).size.should eq(5)
    end

    it "should replace 3 with 'Fizz'" do
      @answer.fizz_buzz(3).last.should eq("Fizz")
    end

    it "should replace 5 with 'Buzz'" do
      @answer.fizz_buzz(5).last.should eq("Buzz")
    end

    it "should replace 15 with 'FizzBuzz'" do
      @answer.fizz_buzz(15).last.should eq("FizzBuzz")
    end

  end
end
