How to run the program:\
&nbsp;&nbsp;&nbsp;&nbsp;Import all the files to REMIX\
Navigate to solidity compiler\
Using version 0.8.7 Compile Saving.sol\
Navigate to deploy & run transactions\
Using Remix VM, select account you wish to be owner account and deploy\

![Screenshot 2022-11-14 103251](https://user-images.githubusercontent.com/101658098/201696014-0c354e51-bb5c-40a1-ab59-e33bcd028484.png)

Usage:\
Specify accounts details.\
  *Tabspace* wallet number, first name, last name, release time in unix format, amount, false\
  *Tabspace*click addBeneficiary\
Create an account\
  *Tabspace*add wallet adress\
  *Tabspace*specify eth amount\
  *Tabspace*click deposit\
Check ability to withdraw\
  *Tabspace*specify wallet adress\
  *Tabspace*click availableToWithdraw\
Withdraw\
  *Tabspace*choose benificiary wallet\
  *Tabspace*click withdraw\
Check benificiary details\
  *Tabspace*specify benificiary number\
  *Tabspace*click benificiaries\

In the 'tests' folder there is a script containing Mocha-Chai unit tests for 'Savings' contract.

To run a script, right click on file name in the file explorer and click 'Run'. Remember, Solidity file must already be compiled.
Output from script will appear in remix terminal.
