class Bottles
  def sing
    verses(99, 0)
  end

  def verses(start, finish)
    start.downto(finish).map { |number| verse(number) }.join("\n")
  end

  def verse(number)
    case number
    when 0
      <<~VERSE
      #{quantity(number).capitalize} #{container(number)} of beer on the wall, #{quantity(number)} #{container(number)} of beer.
      Go to the store and buy some more, 99 #{container(99)} of beer on the wall.
      VERSE
    else
      <<~VERSE
      #{quantity(number)} #{container(number)} of beer on the wall, #{quantity(number)} #{container(number)} of beer.
      Take #{pronoun(number)} down and pass it around, #{quantity(number - 1)} #{container(number - 1)} of beer on the wall.
      VERSE
    end
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

  def quantity(number)
    if number == 0
      "no more"
    else
      number
    end
  end
end
