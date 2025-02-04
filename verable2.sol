// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

// Creating a contract to demonstrate local, state, and global variables
contract VariableExample {

    // State variables are declared at the contract level and stored on the blockchain
    // These variables retain their values between function calls and are persistent
    uint public stateVariable = 10; // Example of a state variable

    // Function to demonstrate local variables
    function localVariableExample() public pure returns(uint) {
        // Local variables are declared inside functions
        // They are temporary and exist only during the execution of the function
        uint localVariable = 20; // Example of a local variable
        return localVariable; // Return the local variable value
    }

    // Function to demonstrate the use of state variables
    function stateVariableExample() public view returns(uint) {
        // State variables can be accessed and modified within functions
        return stateVariable; // Return the state variable value
    }

    // Function to demonstrate the modification of state variables
    function modifyStateVariable(uint _newValue) public {
        // State variables can be updated within functions
        stateVariable = _newValue; // Update the state variable with a new value
    }

    // Function to demonstrate global variables
    function globalVariableExample() public view returns(address) {
        // Global variables provide information about the blockchain and the transaction
        // Example of a global variable: msg.sender (address of the caller)
        return msg.sender; // Return the address of the caller
    }
}




// 1.State Variables:

// Declared at the contract level and stored on the blockchain.
// Persistent and retain their values between function calls.
// Example: uint public stateVariable = 10;

// 2.Local Variables:

// Declared inside functions and exist only during the execution of the function.
// Temporary and not stored on the blockchain.
// Example: uint localVariable = 20;

// 3.Global Variables:

// Provide information about the blockchain and the transaction.
// Examples include msg.sender (the address of the caller) and block.timestamp (the current block timestamp).
// Example in the code: return msg.sender;