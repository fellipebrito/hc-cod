require "#{File.expand_path(File.dirname(__FILE__))}/../app.rb"

RSpec.describe Solution, '.hello_world' do
  it '.solution ' do
    solution = Solution.new
    expect(solution.solution(4, 17)).to eq 3
  end

  it '.square? ' do
    solution = Solution.new
    expect(solution.square?(3)).to eql 0
    expect(solution.square?(4)).to eql 1

    expect(solution.square?(12345)).to eql 0
    expect(solution.square?(42849)).to eql 1
  end
end
