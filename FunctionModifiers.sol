//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract FunctionModifiersExample {
    // Establish a data structure to store values linked to addresses
    mapping(address => uint256) public valueMapping;

    modifier nonZeroValue(uint256 _value) {
        require(_value != 0, "Value cannot be zero");
        _;
    }

    // Modifier: Check if a value is assigned for the sender
    modifier  valueHasBeenSet() {
        require(valueMapping[msg.sender] != 0, "No value set for sender");
        _;
    }

     // Function: Assign a value to the sender's address
    function setValue(uint256 _value) public {
        require(_value != 0, "Value cannot be zero");
        valueMapping[msg.sender] = _value;
    }


    // Function: Retrieve the value linked to the sender's address
    function getValue() public view returns (uint256) {
        require(valueMapping[msg.sender] != 0, "No value set for sender");
        return valueMapping[msg.sender];
    }
}