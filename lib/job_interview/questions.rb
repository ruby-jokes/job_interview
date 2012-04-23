require 'faker'
module JobInterview
  module Questions

    def in_5_years
      "I'd like to " +
        [
          "",
          "have made",
          "have enhanced shareholder value by creating",
          "made someone else rich with my"
        ][rand(3) + 1] + " " +
        Faker::Company.catch_phrase.downcase + "."
    end

    def leaving_current
      "I'm " +
        ["",
          "seeking to",
          "leaving because I can't" ,
          "leaving because I have to",
          "not happy with the oppertunities I have for"
        ][rand(4) + 1] + " " +
        Faker::Company.bs + "."
    end

    def manhole_cover

    end

    def greatest_weakness
    end
  end
end
