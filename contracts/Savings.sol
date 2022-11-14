// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.7;

contract Savings {
    //owner (custodian)
    address owner;

    constructor() {
        owner = msg.sender;
    }

    //define benificiary parameters
    struct Benificiary {
        address payable walletAdress;
        string firstName;
        string lastName;
        uint releaseTime;
        uint amount;
        bool canWithdraw;
    }

    Benificiary[] public benificiaries;

    //funtion to add a benficiary to contract
     function addBenificiary(address payable walletAdress, string memory firstName, string memory lastName, uint releaseTime, uint amount, bool canWithdraw) public {
         require(msg.sender == owner, "only the owner can add benificiries");
         benificiaries.push(Benificiary(
             walletAdress,
             firstName,
             lastName,
             releaseTime,
             amount,
             canWithdraw
         ));
     }

    //function to show balances
     function balanceOf() public view returns(uint) {
         return address(this).balance;
     }

    //deposit funds to contract, specifically to a beneficiary account
    function deposit(address walletAdress) payable public {
        addToBeneficiaryBalance(walletAdress);
    }

    
    //Add a beneficiary balance
    function addToBeneficiaryBalance(address walletAdress) private {
        for(uint i = 0; i < benificiaries.length; i++) {
            benificiaries[i].amount += msg.value;
        }
    }

    //Getting wallet index for the following functions
    function getIndex(address walletAdress) view private returns(uint) {
        for(uint i = 0; i < benificiaries.length; i++) {
            if (benificiaries[i].walletAdress == walletAdress) {
                return i;
            }
        }
        return 999;
    }
    
    //benificiary checks maturity of funds
    function availableToWithdraw(address walletAdress) public returns(bool) {
        uint i = getIndex(walletAdress);
        require(block.timestamp > benificiaries[i].releaseTime, "You cannot withdraw yet");
        if (block.timestamp > benificiaries[i].releaseTime) {
            benificiaries[i].canWithdraw = true;
            return true;
        } else {
            return false;
        }
    }

    //withdraw money after maturity
    function withdraw(address payable walletAdress) payable public {
        uint i = getIndex(walletAdress);
        require(msg.sender == benificiaries[i].walletAdress, "You must be the benificiary to withdraw");
        require(benificiaries[i].canWithdraw == true, "you are not able to withdraw yet");
        benificiaries[i].walletAdress.transfer(benificiaries[i].amount);
    }
}
