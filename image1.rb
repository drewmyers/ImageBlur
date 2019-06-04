class Image
    def initialize(list)
      @list = list
    end
  
    def output_image()
      for array in @list do
        puts(array.join(""))
      end
    end
  end
  
  image = Image.new([
  [0, 0, 0, 0],
  [0, 1, 0, 0],
  [0, 0, 0, 1],
  [0, 0, 0, 0]
  ])
  image.output_image()