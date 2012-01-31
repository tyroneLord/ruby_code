class BookInStock
  # THIS DOES THE SAME THING AS THE METHODS USED FOR EXAMPLE 2 make the variable availble to view
  # attr_reader :isbn, :price
  
  attr_reader :isbn # THIS DOES THE SAME THING AS THE METHOD USED FOR EXAMPLE 3
  attr_accessor :price # THIS DOES THE SAME THING AS THE METHOD USED FOR EXAMPLE 3
  
  def initialize(isbn, price)
    @isbn = isbn
    @price = Float(price)
  end 
  
  # example 1
  # def to_s
  #   "ISBN: #{@isbn}, price: #{@price}"
  # end
  
  # example 2
  # def isbn
  #   @isbn
  # end
  # def price
  #   @price
  # end

  # EXAMPLE 3
  # def price=(new_price) # THIS IS CALLED A SETTER METHOD. SO I YOU DO PRICE = IT INVOKES THIS METHOD
  #   @price = new_price
  # end
  
  #EXAMPLE 4
  def price_in_cents
    Integer(price*100 + 0.5)
  end
  def price_in_cents=(cents)
    @price = cents / 100.0
  end
end

# example 1
# b1 = BookInStock.new("isbn1", 3) 
# p b1
# b2 = BookInStock.new("isbn2", 3.14)
# p b2
# b3 = BookInStock.new("isbn3", "5.67") 
# p b3


# example 2
book = BookInStock.new("isbn1", 12.34)
puts "ISBN = #{book.isbn}"
puts "Price = #{book.price}"


# EXAMPLE 3
# book = BookInStock.new("isbn1", 33.80)
# puts "ISBN      = #{book.isbn}"
# puts "Price     = #{book.price}"
# book.price = book.price * 0.75        # THIS IS HOW YOU INVOKE THE PRICE METHOD ABOVE
# puts "New price = #{book.price}"


# EXAMPLE 4
# book = BookInStock.new("isbn1", 33.80)
# puts "Price = #{book.price}"
# puts "Price in cents = #{book.price_in_cents}" 
# book.price_in_cents = 1234
# puts "Price = #{book.price}"
# puts "Price in cents = #{book.price_in_cents}"

