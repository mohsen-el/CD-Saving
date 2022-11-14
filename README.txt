How to run the program:
Import all the files to REMIX
Navigate to solidity compiler
Using version 0.8.7 Compile Saving.sol
Navigate to deploy & run transactions
Using Remix VM, select account you wish to be owner account and deploy

Usage:
Specify accounts details.
  wallet number, first name, last name, release time in unix format, amount, false
  click addBeneficiary
Create an account
  add wallet adress
  specify eth amount
  click deposit
Check ability to withdraw
  specify wallet adress
  click availableToWithdraw
Withdraw
  choose benificiary wallet
  click withdraw
Check benificiary details
  specify benificiary number
  click benificiaries

In the 'tests' folder there is a script containing Mocha-Chai unit tests for 'Savings' contract.

To run a script, right click on file name in the file explorer and click 'Run'. Remember, Solidity file must already be compiled.
Output from script will appear in remix terminal.
