class BookInStock
  
  # attr_reader :isbn, :price
  
  def initialize(isbn,price)
    @isbn = isbn
    @price = Float(price)
  end
  
  
  def isbn
    @isbn
  end
  def price
    @price
  end
end