require('rspec')
require('scrabble_score')

describe('String#scrabble_score') do
  it("returns a scrabble score for a letter") do
    expect(("z").scrabble_score()).to(eq(10))
  end

  it("returns a scrabble score for a word") do
    expect(("ship").scrabble_score()).to(eq(9))
  end

  it("converts input to lowercase") do
    expect(("Hello").scrabble_score()).to(eq(8))
  end

  it("supports muiltiple word scores") do
    expect(("Hello World").scrabble_score()).to(eq(17))
  end
  
end
