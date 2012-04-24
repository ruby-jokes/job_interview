module PrimesSpec
  
  describe "when called" do
    before(:each) do
      @answer = JobInterview::Answer.new
    end
    
    
    it "should return the first n primes" do
      @answer.primes(10).should == [2, 3, 5, 7, 11, 13, 17, 19, 23, 29]
    end
    
  end
  
end