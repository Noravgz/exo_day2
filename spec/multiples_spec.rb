require_relative '../lib/multiples'

describe "the is_multiple_of_3_or_5? method" do
    it "should return TRUE when an integer is a multiple of 3 or 5" do
      expect(is_multiple_of_3_or_5?(3)).to eq(true)
      expect(is_multiple_of_3_or_5?(5)).to eq(true)
      expect(is_multiple_of_3_or_5?(51)).to eq(true)
      expect(is_multiple_of_3_or_5?(45)).to eq(true)
    end
  
    it "should return FALSE when an integer is NOT a multiple of 3 or 5" do
      expect(is_multiple_of_3_or_5?(7)).to eq(false)
      expect(is_multiple_of_3_or_5?(8)).to eq(false)
      expect(is_multiple_of_3_or_5?(11)).to eq(false)
      expect(is_multiple_of_3_or_5?(13)).to eq(false)
    end
  end


describe "sum_of_3_or_5_multiples" do
  it "returns the sum of multiples of 3 or 5 below a given number" do
      expect(sum_of_3_or_5_multiples(11)).to eq(33) # 3, 5, 6, 9, 10 => somme = 33
      expect(sum_of_3_or_5_multiples(10)).to eq(23) # 3, 5, 6, 9 => somme = 23
    end
  end