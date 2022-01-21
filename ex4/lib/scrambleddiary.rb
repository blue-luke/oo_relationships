class ScrambledDiary
  def initialize(contents)
    @contents = contents
  end

  def read
    @contents
  end

  def scramble(method)
    new_content = method.scramble(@contents)
    @contents = new_content
  end
end