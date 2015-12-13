class Solution
  def square?(x)
    (x == Math::sqrt(x).floor**2) ? 1 : 0
  end

  def solution a, b
    (a...b).map{ |x| square?(x) }.reduce(:+)
  end
end
