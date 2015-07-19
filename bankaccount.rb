print "Methods available:\nnewAccount\naddFunds\nburnMoney\nbalance\n" 

#How can I not have this as a global variable and make it accessible within the class and also outside it?
$accounts = []

class BankAccount

	def initialize
		print "Account holder's name?\n"
		@name = gets.chomp
		@balance = 0

		$accounts << self
	end

	def addFunds
		puts "How much would you like to add?"
		deposit = gets.chomp.to_i
		@balance += deposit
		return "#{@name}'s new balance is $#{@balance}"
	end

	def burnMoney
		puts "How much money would you like to burn?"
		money_to_burn = gets.chomp.to_i
		@balance +- money_to_burn
		return "#{@name}'s new balance is $#{@balance}"
	end

	def balance
		return "#{@name}'s balance = $#{@balance}"
	end

	def name
		@name
	end
end