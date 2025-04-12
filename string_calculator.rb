class StringCalculator
  def add(string)
      0 if string.strip.empty?

      check_for_negative_numbers(string)
  rescue RuntimeError => e
      raise e
  else
      delimiter = string[0..1] == '//' ? string[2] : ','
      number = string.start_with?('//') ? string.gsub('//', '') : string

      number.split(/[\s#{delimiter}]+/).map(&:to_i).sum
  end

  def check_for_negative_numbers(string)
    negative_numbers = string.scan(/-?\d+/).select { |num| num.to_i < 0 }
    raise "negative numbers not allowed #{negative_numbers.join(', ')}" unless negative_numbers.empty?
  end
end