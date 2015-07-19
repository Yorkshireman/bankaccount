class BankAccount
	def initialize
		puts "What is your name?"
		@name = gets.chomp 
	end
end

def newAccount
	BankAccount.new
end