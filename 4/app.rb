class Solution
  def solution s
    all_calls = separate_all_calls s
    grouped_calls = group_calls_by_number all_calls
    number_with_most_calls = number_with_most_calls(grouped_calls)
    all_calls.map{ |x| call_total_price(x[0])unless x[1] == number_with_most_calls }.compact.reduce(:+)
  end

  def number_with_most_calls grouped_calls

    number_with_most_calls = ""
    total_seconds_for_number_with_most_calls = 0

    grouped_calls.each do |g|
      total_seconds_current_number = g[1].map{ |c| total_seconds_in(c[0]) }.reduce(:+)
      if total_seconds_for_number_with_most_calls < total_seconds_current_number
        total_seconds_for_number_with_most_calls = total_seconds_current_number
        number_with_most_calls = g[0]
      end
    end

    number_with_most_calls
  end

  def separate_all_calls s
    s.split("\n").collect(&:strip).map { |x| x.split(",") }
  end

  def group_calls_by_number calls
    calls.group_by { |a| a[1] }
  end

  def call_total_price duration
    total_seconds = total_seconds_in(duration)
    case total_seconds
    when 0..299
      total_seconds * 3
    else
      (total_seconds/60.to_f).ceil * 150
    end
  end

  def total_seconds_in t
    require 'date'

    dt = DateTime.parse(t)
    dt.hour * 3600 + dt.min * 60 + dt.sec
  end
end
