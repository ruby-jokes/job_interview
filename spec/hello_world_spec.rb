require 'spec_helper'

module HelloWorldSpec
  
  describe "When called" do
    before(:each) do
      @answer = JobInterview::Answer.new
    end
    
    it "should print 'Hello, World!'" do
      @answer.hello_world.should == "Hello, World!"
    end
    
  end
  
end