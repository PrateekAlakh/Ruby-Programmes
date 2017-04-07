require 'csv'
require_relative 'book_in_stock'

class CsvReader
	def initialize
		@books_in_stock = []
	end

	def read_in_csv_data(csv_file_name)
		# puts 'In read_in_csv_data'
		CSV.foreach(csv_file_name, headers: true) do |row|
			@books_in_stock << BookInStock.new(row["Date"], row["ISBN"], row["Price"])
			puts "----Date= #{row["Date"]},  ISBN = #{row["ISBN"]}, PRICE = #{row["Price"]}" 
		end
	end

	def total_value_in_stock
		sum = 0.0
		# @books_in_stock.each {|book| sum += book.price}
		puts 'Total items in @books_in_stock = ' + @books_in_stock.length.to_s
		@books_in_stock.each do |book|
			sum += book.price
			# puts "----Date= #{book.date},  ISBN = #{book.isbn}, PRICE = #{book.price}" 
		end
		# puts '@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@'
		return sum
	end
end
