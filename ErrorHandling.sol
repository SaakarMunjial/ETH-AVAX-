// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract ErrorHandling {
    int initBalance = 10000;

    function withdraw(int amount) public returns (int) {
        assert(amount > 0);

        if(amount > initBalance){
            revert("Amount must be less than initial balance!");
        }
        initBalance -= amount;
        return initBalance;
    }

    function depositBalance(int amount) public returns (int){
        require(amount >= 0, "Value should be greater than 0");
        initBalance += amount;
        return initBalance;
    }

    function viewBalance() public view returns(int){
        return initBalance;
    }

}
