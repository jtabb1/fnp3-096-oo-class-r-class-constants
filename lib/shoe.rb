# Added the official solution as an alternative to the 
# originally written working solution shown below:
#
# More tests have to be done to find out which solution 
# is faster for large and continuously updated libraries
# of brands.
#
# For this case, it could be that the official solution
# is faster.
#

class Shoe
  attr_accessor :color, :size, :material, :condition
  attr_reader :brand

  BRANDS = []

  # original
  def initialize_0(brand)
    @brand = brand
    BRANDS << brand
    BRANDS.uniq!
  end

  def cobble
    self.condition = "new"
    puts "Your shoe is as good as new!"
  end

  # official solution
  def initialize(brand)
    @brand = brand
    BRANDS << brand unless BRANDS.include?(brand)
  end
end