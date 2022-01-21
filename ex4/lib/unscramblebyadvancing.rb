class UnscrambleByAdvancing
  def initialize(steps)
    @steps = steps
  end
  def scramble(contents)
    plain_chars = contents.chars
    scrambled_chars = plain_chars.map do |char|
      (char.ord - @steps).chr
    end
    scrambled_chars.join
  end
end