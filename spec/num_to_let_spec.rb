require('rspec')
require('num_to_let')

describe("Fixnum#num_to_let") do
  it('returns the word equivalent of a single digit number') do
    expect(4.num_to_let()).to(eq("four"))
  end
  it('returns the word equivalent of a double digit number less than 20') do
    expect(14.num_to_let()).to(eq("fourteen"))
  end
end
