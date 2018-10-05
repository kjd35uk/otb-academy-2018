require_relative '../number_words'

RSpec.describe "number_words" do
  it "returns the string for 1" do
    expect(number_words (1)).to eq "one"
  end

  it "returns the strings for 2 to 9" do
    expect(number_words (2)).to eq "two"
    expect(number_words (4)).to eq "four"
    expect(number_words (6)).to eq "six"
    expect(number_words (9)).to eq "nine"
  end
end