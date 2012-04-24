require 'faker'
module JobInterview
  module Questions

    def in_5_years
      "I'd like to " +
        [
          "have made",
          "have enhanced shareholder value by creating",
          "made someone else rich with my"
        ].sample + " " +
        Faker::Company.catch_phrase.downcase + "."
    end

    def leaving_current
      "I'm " +
        [
          "seeking to",
          "leaving because I can't" ,
          "leaving because I have to",
          "not happy with the oppertunities I have to"
        ].sample + " " +
        Faker::Company.bs + "."
    end

    def manhole_cover
      [
        "Because men are round.",
        "Because manholes are round.",
        "So they don't fall in.",
        "Because Reuleaux Triangles are hard to manufacture."
      ].sample

    end

    def greatest_weakness
      ["Some times I", "I always"].sample + " " +
      ["try too hard", "work too much", "care too much", "fail so rarely"].sample  + " " +
      "so I " +
      ["make others jealous", "make too much money"].sample + "."
    end

    def why_here
      "Your company " +
      [ "is renowned for",
        "is re-inventing",
        "has revolutionized"
      ].sample + " " + Faker::Company.catch_phrase.downcase + "."
    end

    def what_experience(thing)
      "I am " +
      [
        "a world-renowned expert in ",
        "highly proficient with ",
        "exquisitely competent at ",
        "known as an ultimate authority on "
        ].sample + thing + "."
    end

    def p_equals_np
      [
        "If it does, we can kiss encryption goodbye.",
        "With our current models of computation, answering that question remains infeasible.",
        "I doubt it, but it would make life easier for traveling salesmen."
      ].sample
    end

  end
end
