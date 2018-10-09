class Bottles
  def sing
    verses(99,0)
  end

  def verses(start, finish)
    start.downto(finish).map { |number| verse(number) }.join("\n")
  end

  def verse(number)
      <<~VERSE
        #{amount(number).capitalize} #{container(number)} of beer on the wall, #{amount(number)} #{container(number)} of beer.
        #{second_line_start(number)}, #{amount(successor(number))} #{container(number - 1)} of beer on the wall.
        VERSE
  end

  def container(number)
    if number == 1
      "bottle"
    else
      "bottles"
    end
  end

  def pronoun(number)
    if number == 1
      "it"
    else
      "one"
    end
  end

  def amount(number)
    if number == 0
      "no more"
    else
      number.to_s
    end
  end

  def successor(number)
    if number == 0
      99
    else
      number - 1
    end
  end

  def second_line_start(number)
    if number == 0
      "Go to the store and buy some more"
    else
      "Take #{pronoun(number)} down and pass it around"
    end
  end
end
