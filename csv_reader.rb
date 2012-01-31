require 'csv'
require_relative 'book_in_stock' #this allows us to get code formt he book_in_stock file in this directory

class CsvReader
  
  def initialize
    @books_in_stock = []
  end
  
  def read_in_csv_data(csv_file_name)
    CSV.foreach(csv_file_name, headers: true) do |row|
      @books_in_stock << BookInStock.new(row["ISBN"], row["Amount"])
    end
  end
  
  def total_value_in_stock
    sum = 0.0
    @books_in_stock.each {|book| sum += book.price}
    sum
  end
  
  def number_of_each_isbn 
    # ...
  end
  
end


# reader = CsvReader.new
# reader.read_in_csv_data("file1.csv") 
# reader.read_in_csv_data("file2.csv")
# : : :
# puts "Total value in stock = #{reader.total_value_in_stock}"