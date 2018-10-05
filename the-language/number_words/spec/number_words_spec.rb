require_relative '../number_words'

RSpec.describe "number words" do
  it "returns the string for 1" do
    expect(number_words (1)).to eq "one"
  end

  it "returns the strings for 2 to 9" do
    expect(number_words (2)).to eq "two"
    expect(number_words (4)).to eq "four"
    expect(number_words (6)).to eq "six"
    expect(number_words (9)).to eq "nine"
  end

  it "returns the string for 10" do
    expect(number_words (10)).to eq "ten"
  end

  it "returns the strings for 11 to 19" do
    expect(number_words (11)).to eq "eleven"
    expect(number_words (14)).to eq "fourteen"
    expect(number_words (16)).to eq "sixteen"
    expect(number_words (19)).to eq "nineteen"
  end

  it "returns the string for 20" do
    expect(number_words (20)).to eq "twenty"
  end

  it "returns the strings for the twenties" do
    expect(number_words (22)).to eq "twenty-two"
    expect(number_words (23)).to eq "twenty-three"
    expect(number_words (27)).to eq "twenty-seven"
  end

  it "returns the strings for the thirties" do
    expect(number_words (31)).to eq "thirty-one"
    expect(number_words (36)).to eq "thirty-six"
    expect(number_words (39)).to eq "thirty-nine"
  end

  it "returns the string for the forties to the nineties" do
    expect(number_words (44)).to eq "forty-four"
    expect(number_words (55)).to eq "fifty-five"
    expect(number_words (66)).to eq "sixty-six"
    expect(number_words (77)).to eq "seventy-seven"
    expect(number_words (88)).to eq "eighty-eight"
    expect(number_words (99)).to eq "ninety-nine"
  end

  it "returns the string for 100" do
    expect(number_words (100)).to eq "one hundred"
  end

  it "returns the strings for the 101 to 109" do
    expect(number_words (101)).to eq "one hundred and one"
    expect(number_words (105)).to eq "one hundred and five"
    expect(number_words (107)).to eq "one hundred and seven"
  end
end