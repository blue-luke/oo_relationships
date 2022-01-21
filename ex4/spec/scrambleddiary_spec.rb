require 'scrambleddiary'

describe 'ScrambledDiary' do
  it 'scrambles by advancing chars' do
    sd = ScrambledDiary.new("abc")
    expect(sd.scramble_by_advancing_chars(1)). to eq "bcd"
  end
  it 'unscrambles by advancing chars' do
    sd = ScrambledDiary.new("bcd")
    expect(sd.unscramble_by_advancing_chars(1)). to eq "abc"
  end
  it 'scrambles by reversing chars' do
    sd = ScrambledDiary.new("abc")
    expect(sd.scramble_by_reversing). to eq "cba"
  end
  it 'unscrambles by reversing chars' do
    sd = ScrambledDiary.new("abc")
    expect(sd.scramble_by_reversing). to eq "cba"
  end
end