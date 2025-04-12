class StringCalculator
  def add(string)
      0 if string.strip.empty?

      string.split(',').map(&:to_i).sum
  end
end