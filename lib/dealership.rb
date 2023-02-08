class Dealership
  attr_reader :name, :address, :inventory, :inventory_count

  def initialize(name, address)
    @name = name
    @address = address
    @inventory = []
    @inventory_count = 0
  end

  def add_car(new_car)
    @inventory_count += 1
    @inventory << new_car
  end

  def has_inventory?
    if @inventory.count == 0
      false
    else
      true
    end
  end

  def cars_by_make(searched_make)
    found_cars = []
    inventory.each do |car|
      found_cars << car if
      car.make == searched_make
    end
    found_cars
  end
end