// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

//ref doc https://cryptomarketpool.com/visibility-in-solidity-smart-contracts/

// Creating a contract to demonstrate local, state, and global variables,
// and the visibility of variables and functions in Solidity
contract VariableExample {

    // State variables are declared at the contract level and stored on the blockchain
    // These variables retain their values between function calls and are persistent
    uint public stateVariable = 10; // Public state variable

    // Visibility in Solidity:
    // public: Accessible from within the contract, derived contracts, and externally.
    // private: Accessible only within the contract in which it is declared.
    // internal: Accessible within the contract and derived contracts.
    // external: Can be called from other contracts and transactions but not within the contract itself.

    // Example of a private state variable
    string private privateVariable = "This is private";

    // Example of an internal state variable
    uint internal internalVariable = 100;

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

    // External function example, marked as pure because it does not read or modify state variables
    function externalFunction() external pure returns(string memory) {
        return "This function is external";
    }

    // Internal function example
    function internalFunction() internal view returns(uint) {
        return internalVariable;
    }

    // Public function that calls the internal function
    function callInternalFunction() public view returns(uint) {
        return internalFunction();
    }
}
