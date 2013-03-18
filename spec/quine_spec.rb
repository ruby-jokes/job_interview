require "spec_helper.rb"
module QuineSpec

  describe "When called" do
    before(:each) do
      @answer = JobInterview::Answer.new
    end

    it "should return the source of the calling file" do
      @answer.quine(__FILE__).should == File.read(__FILE__)
    end

    it "should find the calling file if not given" do
      @answer.quine.should == File.read(__FILE__)
    end
  end


end
