def number_words(num)
  number_strings = {
    1 => "one",
    2 => "two",
    3 => "three",
    4 => "four",
    5 => "five",
    6 => "six",
    7 => "seven",
    8 => "eight",
    9 => "nine",
    10 => "ten",
    11 => "eleven",
    12 => "twelve",
    13 => "thirteen",
    14 => "fourteen",
    15 => "fifteen",
    16 => "sixteen",
    17 => "seventeen",
    18 => "eighteen",
    19 => "nineteen",
    20 => "twenty",
    30 => "thirty",
    40 => "forty",
    50 => "fifty",
    60 => "sixty",
    70 => "seventy",
    80 => "eighty",
    90 => "ninety",
    100 => "one hundred"
  }
  if number_strings.include?(num)
    number_strings[num]
  else num < 100 ?
    "#{number_strings[num - (num % 10)]}-#{number_strings[num % 10]}"
  :
    "one hundred and " + number_words(num-100)
end
end