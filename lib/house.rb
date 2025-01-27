class House

  def initialize(start_phrase: "This is the ", verses: Verses.new.verses)
    @verses = verses
    @start_phrase = start_phrase
  end

  def line(number)
    line = "#{@start_phrase}"
    number.downto(1) do |n|
      line << @verses[n]
    end
    line
  end

  def recite()
    (1..12).map { |n| line(n) }.join("\n")
  end
end

class Verses
  attr_reader :verses

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

    @nouns = [
      "horse and the hound and the horn",
      "farmer sowing his corn",
      "rooster that crowed in the morn",
      "priest all shaven and shorn",
      "man all tattered and torn",
      "maiden all forlorn",
      "cow with the crumpled horn",
      "dog",
      "cat",
      "rat",
      "malt",
    ]

    @verbs = [
      "belonged to",
      "kept",
      "crowed in the morn that woke",
      "married",
      "kissed",
      "milked",
      "tossed",
      "worried",
      "killed",
      "ate",
      "lay in"
    ]
  end

  def randomize_verses
    ran_list = [*2..12].sample(11)
    custom_verses = {1 => @verses[1]}
    (2..12).map do |n|
      custom_verses[n] = @verses[ran_list[n-2]]
    end
    custom_verses
  end

  def randomize_clauses_verses
    noun_indexes = [*0..10].sample(11)
    verb_indexes = [*0..10].sample(11)

    custom_verses = {1 => @verses[1]}
    (2..12).map do |n|
      custom_verses[n] = "#{@nouns[noun_indexes[n-2]]} that #{@verbs[verb_indexes[n-2]]} the "
    end
    custom_verses
  end
end