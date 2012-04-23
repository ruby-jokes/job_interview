require "spec_helper.rb"
module QuineSpec

  describe "When called" do
    before(:each) do
      @answer = JobInterview::Answer.new
    end

    it "should return the source of the calling file" do
      @answer.quine.should == File.read(__FILE__)
    end
  end


end
