class Bottles
  def sing
    verses(99,0)
  end

  def verses(start, finish)
    start.downto(finish).map { |number| verse(number) }.join("\n")
  end

  def verse(number)
    bottle_number = BottleNumber.new(number)
    next_bottle_number = BottleNumber.new(bottle_number.successor)
    <<~VERSE
      #{ bottle_number.quantity_of_containers.capitalize } of beer on the wall, #{ bottle_number.quantity_of_containers } of beer.
      #{ bottle_number.action }, #{ next_bottle_number.quantity_of_containers } of beer on the wall.
      VERSE
  end

  class BottleNumber
    attr_reader :number

    def initialize(number)
    @number = number
    end

    def container
      if number == 1
        "bottle"
      else
        "bottles"
      end
    end

    def pronoun
      if number == 1
        "it"
      else
        "one"
      end
    end

    def quantity
      if number == 0
        "no more"
      else
        number.to_s
      end
    end

    def action
      if number == 0
        "Go to the store and buy some more"
      else
        "Take #{ pronoun } down and pass it around"
      end
    end

    def successor
      if number == 0
        99
      else
        number - 1
      end
    end

    def quantity_of_containers
      "#{quantity} #{container}"
    end
  end
end
