require "#{File.expand_path(File.dirname(__FILE__))}/../app.rb"

RSpec.describe Solution, '.hello_world' do
  it '.solution ' do
    solution = Solution.new
    expect(solution.solution([1, 1, 0, 1, 0, 0])).to eq 4
  end
end



