# banking-test
-----
Installation and setup:

- Clone this repository
- Using your command line: `cd banking-test\lib`
- Ensure you have Ruby installed and enter `irb`
- Run the app with `load 'account.rb'`
- Create an account with `my_account = Account.new`
  (or any name you wish rather than my_account)

Using the app:

- To make a deposit of £100: `my_account.deposit(100)`
  (use the name of the account you created earlier and any amount instead of 100)
- To make a withdrawal of £50: `my_account.withdraw(50)`
- To view the current balance: `my_account.balance`
- To print a statement: `my_account.statement.print`
-----

Screenshot:

![Alt text](/images/screenshot.png?raw=true "Screenshot")
