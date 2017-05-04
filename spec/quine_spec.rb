require 'spec_helper.rb'

module QuineSpec

  describe 'When called' do
    before(:each) do
      @answer = JobInterview::Answer.new
    end

    it 'should return its own source code' do
      @answer.quine.should == File.read(File.join(Dir.pwd, 'lib', 'job_interview', 'quine.rb'))
    end
  end

end
