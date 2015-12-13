class Solution
  def solution s
    1
  end

  def palindrome?(str)
    arr = str.gsub(/\s+/, "").split(//)
    (arr.length - arr.uniq.length).even?
  end
end
