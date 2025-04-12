class StringCalculator
  def add(string)
      0 if string.strip.empty?

      delimiter = string[0..1] == '//' ? string[2] : ','
      number = string.start_with?('//') ? string.gsub('//', '') : string

      number.split(/[\s#{delimiter}]+/).map(&:to_i).sum
  end
end