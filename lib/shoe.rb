class Shoe
  attr_accessor :color, :size, :material, :condition
  attr_reader :brand

  def initialize(brand)
    @brand = brand
    BRANDS.each |check_brand|
      if check_brand !== @brand
        BRANDS << brand
      end
    end
  end

  def cobble
    self.condition = "new"
    puts "Your shoe is as good as new!"
  end

  BRANDS = []

end
