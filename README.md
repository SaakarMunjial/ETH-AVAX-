# ErrorHandling Contract

This Solidity smart contract demonstrates Error Handling Techniques using `assert`, `revert`, and `require` functions.

# Prerequisites

- Solidity ^0.8.17

# License

This contract uses the MIT License.

# Contract Details

The `ErrorHandling` contract provides the following functions:

# `depositBalance(int amount)`

- This function demonstrates the usage of the `assert` and `revert` functions.
- It takes an `amount` parameter and checks if it is not equal or less than 0 using the `assert` statement.
- If the condition fails, it triggers an "Internal error" and aborts the execution.
  
- Here `revert` statement is used to check if the `amount` is less than `initBalance` or not.
- If the `amount` is greater than `initBalance`, it reverts the transaction with a custom error message stating that "Amount must be less than initial balance!".

# `withdraw(int amount)`

- This function demonstrates the usage of the `require` function.
- Here require function is checking if the `amount` is greater than 0 or not.
- If the condition fails, it returns an error with the message "Value must be greater than 0".

# `viewBalance()`

- This function is just for checking the initial balance i.e. `initBalance`.

# Usage

1. Make sure you have Solidity ^0.8.17 installed.
2. Compile and deploy the `ErrorHandling` contract to a supported Ethereum network.
3. Interact with the deployed contract by calling the available functions and providing the required parameters.
