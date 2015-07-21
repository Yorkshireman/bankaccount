puts "Methods available:\nnewAccount\naddFunds\nburnMoney\nbalance\n" 

#How can I not have this as a global variable and make it accessible within the class and also outside it?


class Bank
	attr_reader :accounts

	def initialize
		@accounts = []
	end

	def new_account
		@accounts.push(BankAccount.new)
	end
end


class BankAccount

	# This replaces the method def name @name end
	attr_reader :balance

	# This consists of two methods: 'attr_reader' and 'attr_writer' (which is equiv to def name=(new_name) @name = new_name end - allows us to change the name with account.name = "Bob", for example)
	attr_accessor :name

	def initialize
		print "Account holder's name?\n"
		@name = gets.chomp
		@balance = 0
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
		if money_to_burn > @balance
			return "You don't have that much money to burn"
		else
			@balance -= money_to_burn
			return "#{@name}'s new balance is $#{@balance}."
		end
	end

end