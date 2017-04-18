class Fixnum
  def wordify

    # places = ["one","teen","ten","hundred"]

    words = [
      {
        "0" => "",
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
        "0" => "",
        "2" => "twenty",
        "3" => "thirty",
        "4" => "forty",
        "5" => "fifty",
        "6" => "sixty",
        "7" => "seventy",
        "8" => "eighty",
        "9" => "ninety"
      },
    ]
    num_array = self.to_s.split("").reverse
    # self = 1984 num_array = ["4","8","9","1"]
    # tri_array = [["4","8","9"]["1","4","2"]]
    tri_array = []
    trans_array = []

    num_array.each_with_index() do |num, index|
      if index % 3 == 0
        tri_array.push([])
      end
      tri_array[index/3].push(num)
    end

    tri_array.each_with_index() do |little_array, index|

      if little_array[1].eql?("1") #we are in the teens
        trans_array.push(words[1].fetch(little_array[0]))
      else
        #ones code
        trans_array.push(words[0].fetch(little_array[0]))
        #tens code. only happens if our array has a tens position
        if little_array.length != 1
          trans_array.push(words[2].fetch(little_array[1]) + " ")
        end
      end

      # number in hundreds, less than 1000
      if little_array.length == 3
        trans_array.push(words[0].fetch(little_array[2]) + " hundred ")
      end
      # if !little_array[1].eql?("1") #if we are not in the teens range, use normal ones numbers
      #   trans_array.push(words[0].fetch(little_array[0]))
      # elsif little_array[1].eql?("1") #we are in the teens
      #   trans_array.push(words[1].fetch(little_array[0]))
      # end
    end

    trans_array.reverse.join("")
  end
end
