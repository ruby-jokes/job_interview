module JobInterview
  module Quine
    QUOT   = 39.chr
    SOURCE = [
      'module JobInterview',
      '  module Quine',
      '    QUOT   = 39.chr',
      '    SOURCE = [',
      '      ',
      '    ].freeze',
      '',
      '    def quine',
      '      str = String.new',
      '',
      '      0.upto(3) do |i|',
      '        str << "#{SOURCE[i]}\n"',
      '      end',
      '',
      '      0.upto(SOURCE.length - 1) do |i|',
      '        str << "#{SOURCE[4]}#{QUOT}#{SOURCE[i]}#{QUOT},\n"',
      '      end',
      '',
      '      5.upto(SOURCE.length - 1) do |i|',
      '        str << "#{SOURCE[i]}\n"',
      '      end',
      '',
      '      str',
      '    end',
      '',
      '  end',
      'end',
    ].freeze

    def quine
      str = String.new

      0.upto(3) do |i|
        str << "#{SOURCE[i]}\n"
      end

      0.upto(SOURCE.length - 1) do |i|
        str << "#{SOURCE[4]}#{QUOT}#{SOURCE[i]}#{QUOT},\n"
      end

      5.upto(SOURCE.length - 1) do |i|
        str << "#{SOURCE[i]}\n"
      end

      str
    end

  end
end
