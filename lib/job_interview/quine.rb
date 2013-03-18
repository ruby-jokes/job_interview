module JobInterview
  module Quine
    
    def quine(file = nil)
      file ||= caller.first.split(':').first
      return File.read(file)
    end
    
  end
end