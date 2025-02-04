// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

// Creating a contract to demonstrate view, pure, payable functions, and function modifiers
contract FunctionModifiersExample {

    // State variable to store an unsigned integer
    uint public stateVariable = 10;

    // view function example
    // This function reads the state variable but does not modify it
    function getStateVariable() public view returns (uint) {
        return stateVariable; // Returns the value of stateVariable
    }

    // pure function example
    // This function does not read or modify any state variables
    function add(uint a, uint b) public pure returns (uint) {
        return a + b; // Returns the sum of a and b
    }

    // payable function example
    // This function can accept Ether and modify the state variable
    function deposit() public payable {
        stateVariable += msg.value; // Adds the amount of Ether sent to the stateVariable
    }

    // Modifier example
    // Modifiers are used to change the behavior of functions in a declarative way
    modifier onlyIfPositive(uint _value) {
        require(_value > 0, "Value must be positive"); // Checks if the value is positive
        _; // Placeholder for the function body
    }

    // Function using the modifier
    function incrementStateVariable(uint _value) public onlyIfPositive(_value) {
        stateVariable += _value; // Increments the state variable by the value
    }

    // Function to retrieve the balance of the contract
    function getContractBalance() public view returns (uint) {
        return address(this).balance; // Returns the balance of the contract in wei
    }
}
