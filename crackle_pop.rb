#!/usr/bin/env ruby

class CracklePop
  # Returns an array of lines with the correct values, e.g.
  #
  #   ["1", "2", "Crackle", "4", ...]
  def self.generate_lines
    (1..100).map do |num|
      if num % 3 == 0 && num % 5 == 0
        "CracklePop"
      elsif num % 3 == 0
        "Crackle"
      else
        num.to_s
      end
    end
  end

  def self.main
    puts generate_lines.join("\n")
  end
end

if $PROGRAM_NAME == __FILE__
  CracklePop.main
end
