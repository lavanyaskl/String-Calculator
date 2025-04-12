class StringCalculator
  def add(string)
      0 if string.strip.empty?

      string.split(/[\s,]+/).map(&:to_i).sum
  end
end