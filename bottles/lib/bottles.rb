class Bottles
  def sing
    verses(99, 0)
  end

  def verses(start, finish)
    start.downto(finish).map { |number| verse(number) }.join("\n")
  end

  def verse(number)
    bottle_number = BottleNumber.new(number)
    next_bottle_number = BottleNumber.new(bottle_number.successor(number))
      <<~VERSE
      #{bottle_number.quantity(number).capitalize} #{bottle_number.container(number)} of beer on the wall, #{bottle_number.quantity(number)} #{bottle_number.container(number)} of beer.
      #{ bottle_number.action(number) }, #{bottle_number.quantity(bottle_number.successor(number))} #{bottle_number.container(bottle_number.successor(number))} of beer on the wall.
      VERSE
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
        number.to_s
      end
    end

    def action(number)
      if number == 0
        "Go to the store and buy some more"
      else
        "Take #{ pronoun(number) } down and pass it around"
      end
    end

    def successor(number)
      if number == 0
        99
      else
        number - 1
      end
    end
  end
end
