class BankAccount
  attr_reader :balance

  def initialize(starting_balance)
    @balance = starting_balance
  end

  def positive_balance?
    balance > 0
  end
end

my_saving_account = BankAccount.new(500)
p my_saving_account.positive_balance?