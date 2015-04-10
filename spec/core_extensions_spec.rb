require "spec_helper"

describe Array do 
  context "#all_empty?" do
    it "returns true if all elements of the array are empty" do 
      expect(["", "", ""].all_empty?).to be_truthy
    end

    it "returns false if some elements of the array are not empty" do
      expect(["", 1, "", Object.new, :a].all_empty?).to be_falsey
    end

    it "returns true for an empty array" do
      expect([].all_empty?).to be_truthy
    end
  end

  context "#all_same?" do 
    it "returns true if all elements of the array are the same" do
      expect(["A", "A", "A"].all_same?).to be_truthy
    end

    it "returns false if some elements of the array are not the same" do
      expect(["", 1, "", Object.new, :a].all_same?).to be_falsey
    end

    it "returns true for an empty Array" do
	    expect([].all_same?).to be_truthy
	  end
  end

  context "#any_empty?" do
    it "returns true if any elements of the array are empty" do
      expect(["", "no really empty", "not empty either"].any_empty?).to be_truthy
    end

    it "returns false if none of the elements of the array are empty" do
      expect(["full", "fuller", "fullest"].any_empty?).to be_falsey
    end
  end

  context "#none_empty?" do
    it "returns true if none of the elements of the array are empty" do
      expect(["full", "fuller", "fullest"].none_empty?).to be_truthy
    end

    it "returns false if one or more elements of the array are empty" do
      expect(["", "no really empty", "not empty either"].none_empty?).to be_falsey
    end
  end
end