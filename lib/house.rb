class House

  def initialize
    @verses = {
      12 => "horse and the hound and the horn that belonged to the farmer sowing his corn that kept the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n",
      11 => "farmer sowing his corn that kept the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n",
      10 => "rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n",
      9 =>  "priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n",
      8 =>  "man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n",
      7 =>  "maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n",
      6 =>  "cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n",
      5 =>  "dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n",
      4 =>  "cat that killed the rat that ate the malt that lay in the house that Jack built.\n",
      3 =>  "rat that ate the malt that lay in the house that Jack built.\n",
      2 =>  "malt that lay in the house that Jack built.\n",
      1 =>  "house that Jack built.\n",
    }
  end

  def line(number)
    case number
    when 1
      "This is the " << @verses[1]
    when 2
      "This is the " << @verses[2]
    when 3
      "This is the " << @verses[3]
    when 4
      "This is the " << @verses[4]
    when 5
      "This is the " << @verses[5]
    when 6
      "This is the " << @verses[6]
    when 7
      "This is the " << @verses[7]
    when 8
      "This is the " << @verses[8]
    when 9
      "This is the " << @verses[9]
    when 10
      "This is the " << @verses[10]
    when 11
      "This is the " << @verses[11]
    else
      "This is the " << @verses[12]
    end
  end

  def recite
    song = ""
    (1..11).each do |x|
      song += (line(x) + "\n")
    end
    song += line(12)
  end
end