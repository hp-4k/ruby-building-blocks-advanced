require 'spec_helper'

RSpec.describe "enumerable methods" do
  
  describe "my_select" do
    it "selects elements based on a condition" do
      expect([1, 2, 3, 4].my_select { |e| e % 2 == 0 }).to eq [2,4]
    end
  end
  
  describe "my_map" do
    it "maps given function to each element" do
      expect([1, 2, 3, 4].my_map { |e| e ** 2 }).to eq [1, 4, 9, 16]
    end
  end
  
  describe "my_inject" do
    it "mirrors Array#inject correctly" do
      expect([1, 2, 3, 4].inject(100) { |res, e| res + e}).to eq 110
    end
  end
  
  describe "my_count" do
    it "counts the number of elements meeting a condition" do
      expect([1, 2, 3, 4, 5, 6, 7, 8, 9].count { |e| e > 5 }).to eq 4
    end
  end
  
  describe "my_all?" do
    it "correctly detects when all elements meet a condition" do
      expect([1, 2, 3, 4].my_all? { |e| e < 5 }).to be true
    end
    it "correctly detects when some elements do not meet a condition" do
      expect([1, 2, 3, 4].my_all? { |e| e % 2 == 0 }).to be false
    end
  end
  
  describe "my_any?" do
    it "correctly detects when at least one element in the array meets a condition" do
      expect([1, 2, 3, 4].my_any? { |e| e == 1 }).to be true
    end
    it "correctly detects when no elements meet a conditon" do
      expect([1, 2, 3, 4].my_any? { |e| e == 0 }).to be false
    end
  end
  
end