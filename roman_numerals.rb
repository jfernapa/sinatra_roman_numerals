class RomanNumerals
    ONE_ROMAN = "I"

    def convert(number)
        begin 
            roman_number = ONE_ROMAN * Integer(number) 

            equivalences = {'M' => 1000, 'D' => 500, 'C' => 100, 'L' => 50, 'X' => 10, 'V' => 5}
            equivalences.each do |letter, number|
                roman_number = roman_number.gsub(ONE_ROMAN * number, letter)
            end

            exceptions = { 'DCCCC' => 'CM', 'CCCC' => 'CD', 'LXXXX' => 'XC', 'XXXX' => 'XL', 'VIIII' => 'IX', 'IIII' => 'IV' }
            exceptions.each do |wrong, correct|
                roman_number = roman_number.gsub(wrong, correct)
            end 

            if roman_number.empty?
                "#{number} can not convert to roman numerals"
            else
                "#{number} is #{roman_number} in roman numerals"
            end

        rescue ArgumentError
            return "'#{number}' can not convert to roman numerals" 
        end
    end
end
