class House

  def initialize
    @verses = {
      12 => "horse and the hound and the horn that belonged to the ",
      11 => "farmer sowing his corn that kept the ",
      10 => "rooster that crowed in the morn that woke the ",
      9 =>  "priest all shaven and shorn that married the ",
      8 =>  "man all tattered and torn that kissed the ",
      7 =>  "maiden all forlorn that milked the ",
      6 =>  "cow with the crumpled horn that tossed the ",
      5 =>  "dog that worried the ",
      4 =>  "cat that killed the ",
      3 =>  "rat that ate the ",
      2 =>  "malt that lay in the ",
      1 =>  "house that Jack built.\n",
    }
  end

  def random_verses
    ran_list = [*2..12].sample(11)
    custom_verses = {1 => @verses[1]}
    (2..12).map do |n|
      custom_verses[n] = @verses[ran_list[n-2]]
    end
    custom_verses
  end

  def line(number, start_phrase="This is the ")
    number.downto(1) do |n|
      start_phrase << @verses[n]
    end
    start_phrase
  end

  def recite
    (1..12).map { |n| line(n) }.join("\n")
  end
end

h = House.new()
puts h.random_verses