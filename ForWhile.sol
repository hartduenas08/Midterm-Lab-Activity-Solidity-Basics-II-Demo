// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Loop {
    function loop() public pure {
        // Looping construct using "for"
        for (uint i = 0; i < 10; i++) {
            if (i == 3) {
                // Move to the next iteration without executing subsequent code with "continue"
                continue;
            }
            if (i == 5) {
                // Terminate the loop prematurely using "break"
                break;
            }
        }
        // Looping construct utilizing "while"
        uint j;
        while (j < 10) {
            j++;
        }
    }
}