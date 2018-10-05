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

  it "returns the strings for the 110 to 120" do
    expect(number_words (110)).to eq "one hundred and ten"
    expect(number_words (115)).to eq "one hundred and fifteen"
    expect(number_words (120)).to eq "one hundred and twenty"
  end

  it "returns the strings for the one hundreds" do
    expect(number_words (121)).to eq "one hundred and twenty-one"
    expect(number_words (132)).to eq "one hundred and thirty-two"
    expect(number_words (169)).to eq "one hundred and sixty-nine"
  end

  it "returns the strings for the two hundreds" do
    expect(number_words (222)).to eq "two hundred and twenty-two"
    expect(number_words (267)).to eq "two hundred and sixty-seven"
    expect(number_words (299)).to eq "two hundred and ninety-nine"
  end

  it "returns the strings for the three hundreds to nine hundreds" do
    expect(number_words (345)).to eq "three hundred and forty-five"
    expect(number_words (456)).to eq "four hundred and fifty-six"
    expect(number_words (788)).to eq "seven hundred and eighty-eight"
  end
end