require 'sqlite3'

class Budget


	def initialize(income)

		@income = income

		db = SQLite3::Database.new("budget.db")

		expenses_table = <<-SQL
			CREATE TABLE IF NOT EXISTS expenses(
				id INTEGER PRIMARY KEY,
				expense VARCHAR(50);
				amount FLOAT
			)
		SQL

		db.execute(expenses_table)
	end



	def enter_expense(db, expense, amount)

		db.execute("INSERT INTO expenses (expense, amount) VALUES (?, ?)", [expense, amount])

	end

	def show_percentage(db, expense)

		amount = db.execute("SELECT amount FROM expenses WHERE expense=#{expense}")
		percent = (amount/@income)*100

		db.execute("SELECT CONCAT(#{expense}, 'is', #{percent}, ' percent of total expenses') 
			AS breakdown FROM expenses")
	end

	def total_breakdown(db)

		totals = db.execute("SELECT * FROM expense")

		totals.each do |item|
			puts show_percentage(db, items[1])
		end

	end



end

