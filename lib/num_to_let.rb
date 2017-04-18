class Fixnum
  def num_to_let

    words = [
      {
        "1" => "one",
        "2" => "two",
        "3" => "three",
        "4" => "four",
        "5" => "five",
        "6" => "six",
        "7" => "seven",
        "8" => "eight",
        "9" => "nine"
      },
      {
        "0" => "ten",
        "1" => "eleven",
        "2" => "twelve",
        "3" => "thirteen",
        "4" => "fourteen",
        "5" => "fifteen",
        "6" => "sixteen",
        "7" => "seventeen",
        "8" => "eighteen",
        "9" => "nineteen"
      },
      {
        "2" => "twenty",
        "3" => "thirty",
        "4" => "forty",
        "5" => "fifty",
        "6" => "sixty",
        "7" => "seventy",
        "8" => "eighty",
        "9" => "ninety"
      }
    ]
    num_array = self.to_s.split("").reverse
    # self = 1984 num_array = ["4","8","9","1"]

    word = ""

    if self.<(10)
      word = words[0].fetch(num_array[0])
    elsif self < 20
      word = words[1].fetch(num_array[0])
    end
    word
  end
end
