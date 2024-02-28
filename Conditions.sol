//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract IfElse {
    function foo(uint x) public pure returns (uint) {
        if (x < 10) {
            return 0;
        } else if (x <20) {
            return 1;
        } else {
            return 2;
        }
    }

    function ternary(int _x) public pure returns (uint) {
        // Using the ternary operator to shorten the if / else statement
        // The "?" operator is known as the ternary operator
        return _x < 10 ? 1: 2;
    }
}