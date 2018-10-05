require_relative '../number_words'

RSpec.describe "number_words" do
  it "returns the string for 1" do
    expect(number_words (1)).to eq "one"
  end
end