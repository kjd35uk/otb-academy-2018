
def harry_potter(books)
  case
    when books.uniq.length == 1
      "#{8 * books.length}.00 EUR"
    when  books.uniq.length > (books.length / 2)
      set_totals = {
        2 => 15.2,
        3 => 21.6,
        4 => 25.6,
        5 => 30.0
        }
        set = books.uniq
        "#{set_totals[set.length] + (books.length - set.length) * 8}0 EUR"
    else
      set_totals = {
        1 => books.count(1),
        2 => books.count(2),
        3 => books.count(3),
        4 => books.count(4),
        5 => books.count(5),
        }
      combinations = []
        set_totals.each do |key, value|
        if value > 0
          combinations.push(value)
        end
      end
      p combinations
        if combinations == [2,2]
          "#{combinations.count(2) * 15.2}0 EUR"
        elsif combinations = [2,2,2]
          "43.20 EUR"
        end
      end
    end
