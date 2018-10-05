def number_words(num)
  answer = ''
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
    100 => "one hundred",
    1000 => "one thousand",
    1000000 => "one million",
  }
  if number_strings.include?(num)
    answer << number_strings[num]
  elsif num < 100
    answer << "#{number_strings[num - (num % 10)]}-#{number_strings[num % 10]}"
  elsif num < 1000
    answer << "#{number_strings[num / 100]} hundred and " + number_words(num % 100)
  elsif num <=20000
    answer << "#{number_strings[num / 1000]} thousand and " + number_words(num % 1000)
  elsif num <= 1000000
    answer << number_words(num / 1000) + " thousand and " + number_words(num % 1000)
  else
    answer << number_words(num / 1000000) + " million and " + number_words(num % 1000000)
end
pattern = /\ and(?=.*\ and)/
  answer.gsub(pattern, "").gsub(/ and -/, "").gsub(/million and/, "million")
end