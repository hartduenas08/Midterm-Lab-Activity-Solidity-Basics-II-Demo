//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract MyContract {
    uint256 public myNumber;
    mapping(address => uint256) public valueMapping;

    // Function used for constructing objects
    constructor() {
        myNumber = 42;
        // Demonstrating the initialization of a default value for the creator of the contract
        // This line provides an example of setting a default value for the contract creator.
        valueMapping[msg.sender] = 100;
    }
}