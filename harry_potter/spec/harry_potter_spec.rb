require 'harry_potter'

describe "harry_potter" do

    it "returns the correct price for one book" do
      expect( harry_potter([1]) ).to eq( 8.00 )
    end

    it "returns the correct price for two of the same book" do
      expect(harry_potter([1, 1])).to eq(16.00)
    end

     it "returns the correct discounted price for two different books" do
      expect(harry_potter([1, 2])).to eq(15.20)
      expect(harry_potter([2, 5])).to eq(15.20)
    end

    it "returns the correct discounted price for three different books" do
      expect(harry_potter([1, 2, 3])).to eq(21.60)
    end

     it "returns the correct discounted price for four different books" do
      expect(harry_potter([1, 2, 3, 4])).to eq(25.60)
    end

    it "returns the correct discounted price for five different books" do
      expect(harry_potter([1, 2, 3, 4, 5])).to eq(30.00)
    end

     it "returns the correct discounted price a set of 2 different titles, plus a third" do
      expect(harry_potter([1, 2, 2])).to eq(23.20)
    end

     it "returns the correct discounted price for a set of 3 different titles, plus other single books" do
      expect(harry_potter([1, 2, 3, 3])).to eq(29.60)
      expect(harry_potter([1, 2, 3, 2, 3])).to eq(37.60)
    end

    it "returns the correct discounted price for a set of 4 different titles, plus other single books" do
      expect(harry_potter([1, 2, 3, 4, 4])).to eq(33.60)
      expect(harry_potter([1, 2, 3, 2, 3, 4])).to eq(41.60)
    end

    it "returns the correct discounted price for 2 sets of 2 different titles" do
      expect(harry_potter([1, 3, 1, 3])).to eq(30.40)
      expect(harry_potter([3, 3, 4, 4])).to eq(30.40)
    end

    it "returns the correct discounted price for 2 sets of 3 different titles" do
      expect(harry_potter([1, 2, 3, 1, 2, 3])).to eq(43.20)
    end

end
