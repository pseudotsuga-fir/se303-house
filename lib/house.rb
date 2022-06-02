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

  def line(number)
    result = "This is the "
    number.downto(1) do |n|
      result << @verses[n]
    end
    result
  end

  def pirate_line(number)
    result = "Thar be the "
    number.downto(1) do |n|
      result << @verses[n]
    end
    result
  end

  def recite
    (1..12).map { |n| line(n) }.join("\n")
  end
end