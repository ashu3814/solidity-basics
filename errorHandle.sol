// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

// Creating a contract to demonstrate error handling using require, assert, revert, and custom error messages
contract ErrorHandlingExample {

    // State variable to store an unsigned integer
    uint public stateVariable = 10;

    // Event declaration
    event ValueSet(address indexed sender, uint256 value);

    // Custom error type
    error InsufficientBalance(uint requested, uint available);

    // Function with require
    // This function checks if the amount to withdraw is less than or equal to the state variable
    function withdrawWithRequire(uint _amount) public {
        require(_amount <= stateVariable, "Insufficient balance");
        stateVariable -= _amount;
        emit ValueSet(msg.sender, stateVariable); // Emit the event with sender's address and updated value
    }

    // Function with assert
    // This function checks if the balance is not less than the deposited amount
    function depositWithAssert(uint _amount) public {
        stateVariable += _amount;
        assert(stateVariable >= _amount); // Check that the balance is not less than the deposited amount
        emit ValueSet(msg.sender, stateVariable); // Emit the event with sender's address and updated value
    }

    // Function with revert
    // This function handles complex error conditions using custom error messages
    function withdrawWithRevert(uint _amount) public {
        if (_amount > stateVariable) {
            revert InsufficientBalance(_amount, stateVariable);
        }
        stateVariable -= _amount;
        emit ValueSet(msg.sender, stateVariable); // Emit the event with sender's address and updated value
    }
}
