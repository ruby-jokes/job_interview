require './spec_helper.rb'

module FizzBuzzSpec
  include JobInterview::FizzBuzz
  
  describe "When called" do
    it "returns a list of numbers up to n" do
      fizz_buzz(5).size.should eq(5)
    end
    
    it "should replace 3 with 'Fizz'" do
      fizz_buzz(3).last.should eq("Fizz")
    end
    
    it "should replace 5 with 'Buzz'" do
      fizz_buzz(5).last.should eq("Buzz")
    end
    
    it "should replace 15 with 'FizzBuzz'" do
      fizz_buzz(15).last.should eq("FizzBuzz")
    end
    
  end
end