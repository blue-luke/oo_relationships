require 'scrambleddiary'
require 'scramblebyreversing'
require 'unscramblebyreversing'

describe 'Scrambleddiary' do
  xit 'scrambles by advancing chars' do
    sd = ScrambledDiary.new("abc")
    expect(sd.scramble_by_advancing_chars(1)). to eq "bcd"
  end
  xit 'unscrambles by advancing chars' do
    sd = ScrambledDiary.new("bcd")
    expect(sd.unscramble_by_advancing_chars(1)). to eq "abc"
  end
  it 'scrambles by reversing chars' do
    sd = ScrambledDiary.new("abc")
    sd.scramble(ScrambleByReversing.new)
    expect(sd.read). to eq "cba"
  end
  it 'unscrambles by reversing chars' do
    sd = ScrambledDiary.new("abc")
    sd.scramble(UnscrambleByReversing.new)
    expect(sd.read). to eq "cba"
  end
end