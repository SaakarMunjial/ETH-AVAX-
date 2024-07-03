// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract ErrorHandling {
    int public totalFunds = 0;
    int public balance = 1000;

    function contributeFunds(int amount) public returns (int) {
        assert(amount > 0);
        require(amount < balance, "Fund should be less than your balance");

        totalFunds += amount;
        balance -= amount;
        return totalFunds;
    }

    function withdrawFunds(int amount) public returns (int) {
        require(amount > 0, "Withdrawal amount must be greater than 0");

        if(amount > balance){
            revert("Amount must be less than initial balance!");
        }

        balance -= amount;
        return balance;
    }

    function viewTotalFunds() public view returns (int) {
        return totalFunds;
    }
    function viewTotalBalance() public view returns (int) {
        return balance;
    }
}
