class Bottles
  def verse(num)
    if num == 0
      return  <<-VERSE
No more bottles of beer on the wall, no more bottles of beer.
Go to the store and buy some more, 99 bottles of beer on the wall.
VERSE
    else
      build_string(num)
    end
  end

  def build_string(num)
    if num > 1
      word = "#{num} bottles"
      word_minus_1 = "#{num - 1} bottle#{"s" if num - 1 > 1}"
    else
      word = "1 bottle"
      word_minus_1 = "no more bottles"
    end
    <<-VERSE
#{word} of beer on the wall, #{word} of beer.
Take #{num - 1 == 0 ? "it" : "one"} down and pass it around, #{word_minus_1} of beer on the wall.
VERSE
  end

  def verses(*args)
    answer = ""
    array = (args[1]..args[0]).to_a.reverse
    array.each_with_index.map do |num, index|
      index == array.length-1 ? answer << verse(num) : answer << verse(num) + "\n"
    end
    answer
  end

  def sing
    verses(99, 0)
  end
end
