class Image
    
    def initialize(list)
        @list = list
    end

    def output_image
        @list.map { |arr| puts arr.join() }
    end

    def blur(distance = 1)
        @values = []
        @list.each_with_index {|row_list, row|
            row_list.each_with_index {|col_list, col|
            col_list == 1 ? @values.push([row, col]) : false
        }
    }
        @values.each {|value|
            row = value[0]
            col = value[1]
            i = distance
            while i > 0
                @list[row - i][col] = 1 unless row == 0
                @list[row + i][col] = 1 unless row + i == @list.length
                @list[row][col - i] = 1 unless col == 0
                @list[row][col + i] = 1 unless col + i == @list[row].length
                if i != distance then
                    @list[row - i][col + (distance - i)] = 1 unless row == 0
                    @list[row - i][col - (distance - i)] = 1 unless row == 0
                end
                i -= 1
            end
        }
    end
end

image = Image.new([
[0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
[0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
[0, 0, 0, 0, 1, 0, 0, 0, 0, 0],
[0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
[0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
])

image.blur()
image.output_image()