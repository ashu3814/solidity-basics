// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

// Creating a contract to demonstrate memory and storage in Solidity
contract MemoryStorageExample {

    // State variable stored in storage
    uint[] public storageArray;

    // Function to demonstrate storage and memory
    function manipulateArrays() public {
        // Adding elements to the storage array
        storageArray.push(1);
        storageArray.push(2);
        storageArray.push(3);

        // Create a memory array and copy storage array to it
        uint[] memory tempArray = new uint[](storageArray.length);
        for (uint i = 0; i < storageArray.length; i++) {
            tempArray[i] = storageArray[i];
        }

        // Modify the memory array (this does not affect the storage array)
        tempArray[0] = 100;

        // Modify the storage array directly
        storageArray[1] = 200;
    }

    // Function to get an element from the storage array
    function getStorageArrayElement(uint _index) public view returns (uint) {
        require(_index < storageArray.length, "Index out of bounds");
        return storageArray[_index];
    }
}
