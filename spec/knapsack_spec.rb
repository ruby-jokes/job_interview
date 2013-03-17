require 'spec_helper'

module KnapsackSpec

  describe "When called" do
    before(:each) do
      @answer = JobInterview::Answer.new
      @items = [
        [4, 3],
        [1, 2],
        [12, 20],
        [6, 4]
      ]
    end

    cases = [
      [0, 0],
      [1, 2],
      [2, 2],
      [3, 2],
      [4, 3],
      [5, 5],
      [6, 5],
      [7, 6],
      [8, 6],
      [9, 6],
      [10, 7],
      [11, 9],
      [12, 20],
      [100, 29]
    ]

    cases.each do |capacity, profit|
      it "should return #{profit} in memoize mode with capacity #{capacity}" do
        @answer.knapsack(@items, capacity, :memoize).should == profit
      end

      it "should return #{profit} in dynamic programming mode with capacity #{capacity}" do
        @answer.knapsack(@items, capacity, :dynamic).should == profit
      end
    end
  end
end
