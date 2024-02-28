//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract MappingExample {
    // Declaration of a mapping to store values corresponding to addresses
    mapping(address => uint256) public valueMapping;

    // Method for assigning a value to the sender's address
    function setValue(uint256 _value) public {
        valueMapping[msg.sender] = _value;
    }

    // Function to obtain the value associated with the sender's address
    function getValue() public view returns (uint256) {
        return valueMapping[msg.sender];
    }
}