require 'scrambleddiary'
require 'scramblebyreversing'
require 'unscramblebyreversing'
require 'scramblebyadvancing'
require 'unscramblebyadvancing'

describe 'Scrambleddiary' do
  it 'scrambles by advancing chars' do
    sd = ScrambledDiary.new("abc")
    sd.scramble(ScrambleByAdvancing.new(1))
    expect(sd.read).to eq "bcd"
  end
  it 'unscrambles by advancing chars' do
    sd = ScrambledDiary.new("bcd")
    sd.scramble(UnscrambleByAdvancing.new(1))
    expect(sd.read).to eq "abc"
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