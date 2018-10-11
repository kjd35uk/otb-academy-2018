
def harry_potter(books)
  case
    when books.uniq.length == 1
      8 * books.length
    when  books.uniq.length > (books.length / 2)
      set_totals = {
        2 => 15.2,
        3 => 21.6,
        4 => 25.6,
        5 => 30.0
        }
        set = books.uniq
        set_totals[set.length] + (books.length - set.length) * 8
    else
      set_totals = {
        1 => books.count(1),
        2 => books.count(2),
        3 => books.count(3),
        4 => books.count(4),
        5 => books.count(5),
        }

      combinations = []

      set_totals.each do |book_id, count|
      i = 0
      count.times {
        if combinations[i].nil?
          combinations[i] = []
        end
        combinations[i] << book_id
        i += 1
      }
    end

    total = combinations.inject(0) do |total, combination|
      total += harry_potter(combination).to_f
      total
      end
    end
  end
