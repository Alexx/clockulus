require('rspec')
require('clock')

describe('clock-calculus') do
  it('will accept a time input (hrs, mins) and output the 360 position of the hands') do
    expect(getHandPosition([12,00])).to eq([0,0])
  end

  it('it will change the hour depending on position of minute hand') do
    expect(getHandPosition([12,30])).to eq([15,180])
  end

  it('it will determine the lesser of two possible angles created by clock hands') do
    expect(clockulus([12,15])).to eq(82.5)
  end

end
