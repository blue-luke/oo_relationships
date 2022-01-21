class ScrambledDiary
  def initialize(contents)
    @contents = contents
  end

  def read
    @contents
  end

  # def unscramble_by_advancing_chars(steps)
  #   scrambled_chars = @contents.chars
  #   plain_chars = scrambled_chars.map do |char|
  #     (char.ord - steps).chr
  #   end
  #   @contents = plain_chars.join
  # end

  def scramble(method)
    new_content = method.scramble(@contents)
    @contents = new_content
  end
end