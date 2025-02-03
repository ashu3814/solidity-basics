// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Define a contract named MyContract
contract MyContract {

    // State variables declared at the beginning of the contract are stored on the blockchain.
    // Each variable needs to have a specific data type.

    // String data type called myString. Public visibility allows it to be accessed from outside the contract.
    string public myString = "hello";

    // bytes32 data type is used for efficient storage of data. This variable is also public.
    bytes32 public myBytes32 = "hello world";
    
    // Integer data type called myInt. Public visibility allows external access.
    int public myInt = 1;

    // Unsigned integer (non-negative) data type called myUint. Public visibility.
    uint public myUint = 2;
    
    // Unsigned 256-bit integer data type called myUint256. Public visibility.
    uint256 public myUint256 = 3;
    
    // Unsigned 8-bit integer data type called myUint8. Public visibility.
    uint8 public myUint8 = 4;

    // Address data type called myAddress. Stores an Ethereum address. Public visibility.
    address public myAddress = 0x1f9840a85d5aF5bf1D1762F925BDADdC4201F984;

    // Function named getValue returns a uint value.
    // Functions can have local variables that are stored in memory. 
    // Local variables must also have declared data types.
    function getValue() public pure returns(uint) {
        // Local variable value of type uint initialized to 6.
        uint value = 6;
        // Return the value.
        return value;
    }
}
