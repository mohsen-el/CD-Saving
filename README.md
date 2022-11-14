How to run the program:\
Import all the files to REMIX\
Navigate to solidity compiler\
Using version 0.8.7 Compile Saving.sol\
Navigate to deploy & run transactions\
Using Remix VM, select account you wish to be owner account and deploy\

![Screenshot 2022-11-14 103251](https://user-images.githubusercontent.com/101658098/201696014-0c354e51-bb5c-40a1-ab59-e33bcd028484.png)

Usage:\
Specify accounts details.\
  &nbsp;&nbsp;&nbsp;&nbsp;wallet number, first name, last name, release time in unix format, amount, false\
  &nbsp;&nbsp;&nbsp;&nbsp;click addBeneficiary\
Create an account\
  &nbsp;&nbsp;&nbsp;&nbsp;add wallet adress\
  &nbsp;&nbsp;&nbsp;&nbsp;specify eth amount\
  &nbsp;&nbsp;&nbsp;&nbsp;click deposit\
Check ability to withdraw\
  &nbsp;&nbsp;&nbsp;&nbsp;specify wallet adress\
  &nbsp;&nbsp;&nbsp;&nbsp;click availableToWithdraw\
Withdraw\
  &nbsp;&nbsp;&nbsp;&nbsp;choose benificiary wallet\
  &nbsp;&nbsp;&nbsp;&nbsp;click withdraw\
Check benificiary details\
  &nbsp;&nbsp;&nbsp;&nbsp;specify benificiary number\
  &nbsp;&nbsp;&nbsp;&nbsp;click benificiaries\

In the 'tests' folder there is a script containing Mocha-Chai unit tests for 'Savings' contract.

To run a script, right click on file name in the file explorer and click 'Run'. Remember, Solidity file must already be compiled.
Output from script will appear in remix terminal.
