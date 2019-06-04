class Dog
    attr_accessor :age, :breed

    def initialize(age, breed)
        @age = age
        @breed = breed
    end

    def output_dog
        puts "#{self.age} year old #{self.breed}"
    end

    def self.random_dog
        Dog.new(rand(12), :Dalmatian)
    end
end

dog = Dog.random_dog
dog.output_dog