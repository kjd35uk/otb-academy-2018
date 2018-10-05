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

  it "returns the strings for 1000" do
    expect(number_words (1000)).to eq "one thousand"
  end

  it "returns the strings for the low one thousands" do
    expect(number_words (1001)).to eq "one thousand and one"
    expect(number_words (1007)).to eq "one thousand and seven"
    expect(number_words (1019)).to eq "one thousand and nineteen"
  end

  it "returns the strings for 1020 - 1999" do
    expect(number_words (1020)).to eq "one thousand and twenty"
    expect(number_words (1042)).to eq "one thousand and forty-two"
    expect(number_words (1782)).to eq "one thousand seven hundred and eighty-two"
  end

  it "returns the string for 2000" do
    expect(number_words (2000)).to eq "two thousand"
  end

  it "returns the strings for the two to nineteen thousands" do
    expect(number_words (2057)).to eq "two thousand and fifty-seven"
    expect(number_words (3148)).to eq "three thousand one hundred and forty-eight"
    expect(number_words (14927)).to eq "fourteen thousand nine hundred and twenty-seven"
    expect(number_words (19274)).to eq "nineteen thousand two hundred and seventy-four"
  end

  it "returns the string for 20000" do
    expect(number_words (20000)).to eq "twenty thousand"
  end

  it "returns the strings for 20,001 to 100,000" do
    expect(number_words (21372)).to eq "twenty-one thousand three hundred and seventy-two"
    expect(number_words (82938)).to eq "eighty-two thousand nine hundred and thirty-eight"
    expect(number_words (90926)).to eq "ninety thousand nine hundred and twenty-six"
  end

  it "returns the strings for the hundred thousands" do
    expect(number_words (100273)).to eq "one hundred thousand two hundred and seventy-three"
    expect(number_words (234865)).to eq "two hundred thirty-four thousand eight hundred and sixty-five"
    expect(number_words (999999)).to eq "nine hundred ninety-nine thousand nine hundred and ninety-nine"
  end

  it "returns the string for 1,000,000" do
    expect(number_words (1000000)).to eq "one million"
  end

  it "returns the strings for the one millions" do
    expect(number_words (1000684)).to eq "one million six hundred and eighty-four"
    expect(number_words (1273849)).to eq "one million two hundred seventy-three thousand eight hundred and forty-nine"
    expect(number_words (1938476)).to eq "one million nine hundred thirty-eight thousand four hundred and seventy-six"
  end

  it "returns the strings for the two to twenty millions" do
    expect(number_words (2000000)).to eq "two million"
    expect(number_words (3859483)).to eq "three million eight hundred fifty-nine thousand four hundred and eighty-three"
    expect(number_words (9739275)).to eq "nine million seven hundred thirty-nine thousand two hundred and seventy-five"
    expect(number_words (17485930)).to eq "seventeen million four hundred eighty-five thousand nine hundred and thirty"
    expect(number_words (20324756)).to eq "twenty million three hundred twenty-four thousand seven hundred and fifty-six"
  end

  it "returns the strings for the thirty to ninety millions" do
    expect(number_words (30000000)).to eq "thirty million"
    expect(number_words (48059483)).to eq "forty-eight million fifty-nine thousand four hundred and eighty-three"
    expect(number_words (82938000)).to eq "eighty-two million nine hundred thirty-eight thousand"
    expect(number_words (99999999)).to eq "ninety-nine million nine hundred ninety-nine thousand nine hundred and ninety-nine"
  end

  it "returns the strings for the hundred millions" do
    expect(number_words (182938475)).to eq "one hundred eighty-two million nine hundred thirty-eight thousand four hundred and seventy-five"
    expect(number_words (300000000)).to eq "three hundred million"
    expect(number_words (726374837)).to eq "seven hundred twenty-six million three hundred seventy-four thousand eight hundred and thirty-seven"
    expect(number_words (800900421)).to eq "eight hundred million nine hundred thousand four hundred and twenty-one"
  end
end