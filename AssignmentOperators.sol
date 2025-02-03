// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

// Creating a contract to demonstrate how assignment operators work
contract SolidityOperatorExample {
    
    // State variables are assigned initial values
    // These variables are stored on the blockchain

    // Declaring state variables
    uint public variable_add = 70;
    uint public variable_sub = 50;
    uint public variable_mul = 25;
    uint public variable_div = 80;
    uint public variable_mod = 68;
    
    // Function that demonstrates how assignment operators work
    // This function modifies the values of the state variables
    function getResults() public {
        // += operator adds the specified value to the variable
        variable_add += 25;  // variable_add now becomes 95 (70 + 25)
        
        // -= operator subtracts the specified value from the variable
        variable_sub -= 30;  // variable_sub now becomes 20 (50 - 30)
        
        // *= operator multiplies the variable by the specified value
        variable_mul *= 25;  // variable_mul now becomes 625 (25 * 25)
        
        // /= operator divides the variable by the specified value
        variable_div /= 5;   // variable_div now becomes 16 (80 / 5)
        
        // %= operator assigns the remainder of the variable divided by the specified value
        variable_mod %= 60;  // variable_mod now becomes 8 (68 % 60)
        
        // Function returns nothing
        return;
    }
}
