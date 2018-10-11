class Bottles
  def sing
    verses(99, 0)
  end

  def verses(start, finish)
    start.downto(finish).map { |number| verse(number) }.join("\n")
  end

  def verse(number)
    bottle_number = BottleNumber.new(number)
    case number
    when 0
      <<~VERSE
      #{bottle_number.quantity(number).capitalize} #{bottle_number.container(number)} of beer on the wall, #{bottle_number.quantity(number)} #{bottle_number.container(number)} of beer.
      Go to the store and buy some more, 99 #{bottle_number.container(99)} of beer on the wall.
      VERSE
    else
      <<~VERSE
      #{bottle_number.quantity(number)} #{bottle_number.container(number)} of beer on the wall, #{bottle_number.quantity(number)} #{bottle_number.container(number)} of beer.
      Take #{bottle_number.pronoun(number)} down and pass it around, #{bottle_number.quantity(number - 1)} #{bottle_number.container(number - 1)} of beer on the wall.
      VERSE
    end
  end

  class BottleNumber
  attr_reader :number

    def initialize(number)
      @number = number
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
end
