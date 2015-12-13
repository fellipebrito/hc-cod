require "#{File.expand_path(File.dirname(__FILE__))}/../app.rb"

RSpec.describe Solution, '.hello_world' do
  it '.solution ' do
    solution = Solution.new
    expect(solution.solution("00:01:07,400-234-090
                              00:05:01,701-080-080
                              00:05:00,400-234-090")).to eq 900
  end

  it 'call_total_price' do
    solution = Solution.new
    expect(solution.call_total_price('00:01:07')).to eq 201
    expect(solution.call_total_price('00:05:00')).to eq 750
    expect(solution.call_total_price('00:05:01')).to eq 900
  end

  it 'total_seconds_in' do
    solution = Solution.new
    expect(solution.total_seconds_in('00:01:00')).to eq 60
    expect(solution.total_seconds_in('00:01:15')).to eq 75
    expect(solution.total_seconds_in('01:00:00')).to eq 3600
   end
end
