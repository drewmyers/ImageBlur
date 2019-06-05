class Image
    attr_accessor :list

    def initialize(list)
        @list = list
    end

    def blur(distance = 1)
        distance.times do
        change
        end
    end

    def output_image()
        @list.each {|item| puts "#{item.join()}"}
    end

    private

    def change()
        width = list[0].length
        height = list.length
        ones_list = []

        list.each_with_index do |row, y|
        row.each_with_index do |value, x|
            ones_list << [x, y] if value == 1
        end
    end

        ones_list.each do |coordinate|
        x, y = coordinate

        list[y][x + 1] = 1 unless (x + 1 >= width)
        list[y][x - 1] = 1 unless (x - 1 < 0)
        list[y + 1][x] = 1 unless (y + 1 >= height)
        list[y - 1][x] = 1 unless (y - 1 < 0)
        end
    end
end


image = Image.new([
[0, 0, 0, 0, 0, 0, 0, 0, 1, 0],
[0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
[0, 0, 0, 0, 1, 0, 0, 0, 0, 0],
[0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
[0, 0, 0, 0, 0, 0, 0, 0, 0, 1]
])

image.blur()
image.output_image()