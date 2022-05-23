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
    "This is the " <<
    case number
    when 1
      @verses[1]
    when 2
      @verses[2]
    when 3
      @verses[3]
    when 4
      @verses[4]
    when 5
      @verses[5]
    when 6
      @verses[6]
    when 7
      @verses[7]
    when 8
      @verses[8]
    when 9
      @verses[9]
    when 10
      @verses[10]
    when 11
      @verses[11]
    else
      @verses[12]
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