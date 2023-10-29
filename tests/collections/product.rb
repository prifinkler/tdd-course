class Product
  attr_reader :id, :name, :quantity, :price
  @@products = []

  def initialize(data={})
  @id = data[:id] || 0
  @name = data[:name] || "Test product"
  @quantity = data[:quantity] || 0
  @price = data[:price] || 0
  @@products << self
  end

  def self.all
    @@products
  end

  def self.product_names
    # map
    # @@products.map { |product| product.name }
    @@products.map(&:name)
  end

  def self.products_to_order
    #reject
    @@products.reject { |product| product.quantity > 0 }
    #select
    @@products.select { |product| product.quantity <= 0 }
  end

  def self.products_value
    @@products.reduce(0) { |acc, product| acc + product.quantity * product.price}
  end
end
