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

  end
end
