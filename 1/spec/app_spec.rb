require "#{File.expand_path(File.dirname(__FILE__))}/../app.rb"

RSpec.describe Solution, '.hello_world' do
  it '.solution ' do
    solution = Solution.new
    expect(solution.solution('dooernedeevrvn')).to eq 1
  end

  it '.palindrome?' do
    solution = Solution.new
    expect(solution.palindrome?('kayak')).to be_truthy
  end
end
