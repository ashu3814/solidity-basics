// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

// Creating a contract to demonstrate push, pop, and delete operations on arrays in Solidity
contract ArrayOperations {

    // Dynamic array of unsigned integers
    uint[] public dynamicArray;

    // Event declaration for logging array changes
    event ArrayUpdated(string operation, uint index, uint value);
    event ArrayCleared();

    // Function to add an element to the dynamic array using push
    function addElement(uint _value) public {
        dynamicArray.push(_value);
        emit ArrayUpdated("Push", dynamicArray.length - 1, _value);
    }

    // Function to remove the last element from the dynamic array using pop
    function removeLastElement() public {
        require(dynamicArray.length > 0, "Array is already empty");
        uint value = dynamicArray[dynamicArray.length - 1];
        dynamicArray.pop();
        emit ArrayUpdated("Pop", dynamicArray.length, value);
    }

    // Function to delete an element at a specific index in the dynamic array
    function deleteElement(uint _index) public {
        require(_index < dynamicArray.length, "Index out of bounds");
        uint value = dynamicArray[_index];
        delete dynamicArray[_index];
        emit ArrayUpdated("Delete", _index, value);
    }

    // Function to delete all elements in the dynamic array
    function clearArray() public {
        delete dynamicArray;
        emit ArrayCleared();
    }

    // Function to get the length of the dynamic array
    function getArrayLength() public view returns (uint) {
        return dynamicArray.length;
    }

    // Function to retrieve an element from the dynamic array by index
    function getElement(uint _index) public view returns (uint) {
        require(_index < dynamicArray.length, "Index out of bounds");
        return dynamicArray[_index];
    }
}
