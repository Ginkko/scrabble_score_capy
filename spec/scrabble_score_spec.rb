require('rspec')
require('scrabble_score')
require('pry')

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

  it("ignores non letter characters") do
    expect(("Hello World!").scrabble_score()).to(eq(17))
  end

  it("returns 0 when no valid characters entered") do
    expect(("123").scrabble_score()).to(eq(0))
  end
  
end
