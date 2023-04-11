# array = [{"a" => 10},{"b" => 20},{"c" => 30}]

# values_array = array.collect { |h| h.values }
# p values_array.flatten.reduce(:+)

class HHA
  NOUN = ["abcd", "c", "def", "h", "ij", "cde"]
  VERBS = ["bc", "fg", "g", "hij", "bcd"]
  ARTICLES = ["a", "ac", "e"]

  def find(string)
    n = 0
    array = []
    string_array = string.split("")
    while n <= string_array .length - 1
      string_array .length.times do |i| 
       inner_string = string_array  [n..i].join("")
       array << inner_string if NOUN.include?(inner_string) || VERBS.include?(inner_string) || ARTICLES.include?(inner_string)
      end 
      n += 1
    end
    puts array
  end
end
o = HHA.new
o.find("abcd")


class hhh_spec
  describe HHA do
    before do
      @hhh = HHA.new
    end

    describe "#find" do
     context "find the letters from the string" do
       it "prints the result of text abcd" do
         expect(@hhh.find("abcd")).to eq(['a', 'abcd' 'bc', 'bcd', 'c'])
       end

       it "prints the result of text hij" do
         expect(@hhh.find("hij")).to eq(['a', 'abcd' 'bc', 'bcd', 'c'])
       end

       it "prints the result of text hijhij" do
         expect(@hhh.find("hijhij")).to eq(['a', 'abcd' 'bc', 'bcd', 'c'])
       end

       it "prints the result of text gc" do
         expect(@hhh.find("gc")).to eq(['g', 'c'])
       end

       it "prints the result of text dbd" do
         expect(@hhh.find("dbd")).to eq([])
       end
     end
    end
  end
end


2) program

def return_number(list)
  list.each do |i|
    if return i list.count(i) > 3
  end
end

return_number([1,2,3,3,1,2,2,3,4,5,6,7,4,5,2,1])