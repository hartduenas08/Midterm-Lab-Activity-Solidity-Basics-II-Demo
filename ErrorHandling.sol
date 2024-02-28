//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract ErrorHandlingExaxmple {
    // Creating a mapping to store data linked with addresses
    mapping(address => uint256) public valueMapping;

    // Function for assigning a value to the address of the sender
    function setValue(uint256 _value) public {
        require(_value != 0, "Value cannot be zero");
        valueMapping[msg.sender] = _value;
    }


    // Function for fetching the value corresponding to the sender's address
    function getValue() public view returns (uint256) {
        require(valueMapping[msg.sender] != 0, "No value set for sender");
        return valueMapping[msg.sender];
    }
}