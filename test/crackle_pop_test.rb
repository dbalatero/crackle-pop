require 'test/unit'
require_relative '../crackle_pop'

class CracklePopTest < Test::Unit::TestCase
  def test_generates_correct_number_of_lines
    lines = CracklePop.generate_lines

    assert_equal(100, lines.size)
  end

  def test_crackle_pops_are_printed
    expected_line_numbers = [15, 30, 45, 60, 75, 90]

    lines = CracklePop.generate_lines

    # Subtract 1, since arrays are 0-based
    expected_indexes = expected_line_numbers.map { |num| num - 1 }

    expected_indexes.each do |index|
      assert_equal("CracklePop", lines[index])
    end
  end

  def test_crackles_are_printed
    expected_line_numbers = [
      3, 6, 9, 12,
      18, 21, 24, 27,
      33, 36, 39, 42,
      48, 51, 54, 57,
      63, 66, 69, 72,
      78, 81, 84, 87,
      93, 96, 99
    ]

    lines = CracklePop.generate_lines

    # Subtract 1, since arrays are 0-based
    expected_indexes = expected_line_numbers.map { |num| num - 1 }

    expected_indexes.each do |index|
      assert_equal("Crackle", lines[index])
    end
  end

  def test_matches_snapshot
    expected_lines = %w[
      1
      2
      Crackle
      4
      5
      Crackle
      7
      8
      Crackle
      10
      11
      Crackle
      13
      14
      CracklePop
      16
      17
      Crackle
      19
      20
      Crackle
      22
      23
      Crackle
      25
      26
      Crackle
      28
      29
      CracklePop
      31
      32
      Crackle
      34
      35
      Crackle
      37
      38
      Crackle
      40
      41
      Crackle
      43
      44
      CracklePop
      46
      47
      Crackle
      49
      50
      Crackle
      52
      53
      Crackle
      55
      56
      Crackle
      58
      59
      CracklePop
      61
      62
      Crackle
      64
      65
      Crackle
      67
      68
      Crackle
      70
      71
      Crackle
      73
      74
      CracklePop
      76
      77
      Crackle
      79
      80
      Crackle
      82
      83
      Crackle
      85
      86
      Crackle
      88
      89
      CracklePop
      91
      92
      Crackle
      94
      95
      Crackle
      97
      98
      Crackle
      100
    ]

    lines = CracklePop.generate_lines

    assert_equal(expected_lines, lines)
  end
end
