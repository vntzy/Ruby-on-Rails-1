class Array
    def compress
        compressed = []
        self.each do |row|
            row.each_with_index do |element, index|
                first = true
                if element.nil?
                    compressed.push nil
                else
                    if first
                        
                    compressed.first_nil [index, element]
                end
            end
        end
        compressed
    end

    def first_nil(value)
        self.each_with_index do |element, index|
            if element.nil?
                self[index] = value
                return
            end
        end
        self[0] = value
    end
end

print   [[1, nil, nil, nil],
        [nil, 2, 5, nil],
        [6, nil, nil, 7],
        [nil, 3, nil, 4]].compress