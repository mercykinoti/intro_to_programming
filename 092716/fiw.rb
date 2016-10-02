
#numbers to words assignment/.
def in_words(var)
  numbers_to_name = {
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
      100 => "hundred",
      1000 => "thousand",
      1000000 => "million",
      1000000000 => "billion"
    }
  str = ""
  numbers_to_name.each do |num, name|
    if var == 0
      #puts "zero"
      return str
    elsif var.to_s.length == 1 && var/num > 0
      return str + "#{name}"      
    elsif var < 100 && var/num > 0
      return str + "#{name}" if var%num == 0
      return str + "#{name} " + in_words(var%num)
    elsif var/num > 0
      return str + in_words(var/num) + " #{name} " + in_words(var%num)
    end
  end
end



#puts in_words(4) == "four"
#puts in_words(27) == "twenty seven"
