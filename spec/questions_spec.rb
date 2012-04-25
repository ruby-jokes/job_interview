require "spec_helper.rb"
module QuestionsSpec
  include JobInterview::Questions

  class Dummy
  end

  describe "When called" do
    before(:each) do
      @dummy = Dummy.new
      @dummy.extend(JobInterview::Questions)
    end

    def is_correct_answer(type, answer)
      if answer.respond_to? :wrong
        return false
      else
        return true
      end
    end

    %W[in_5_years leaving_current manhole_cover greatest_weakness why_here p_equals_np what_interest].each do |m|
      it "should return the right answer for #{m}" do
        answer = @dummy.send(m)
        is_correct_answer(m, answer).should be_true
      end

    end
  end


end
