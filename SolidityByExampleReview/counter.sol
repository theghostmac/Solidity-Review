// SPDX-License-Identifier: MIT
// Compiler version must be in the range:
pragma solidity ^0.8.0;

contract Counter {
    uint public count;

    function getCurrentCount() public view returns (uint) {
        return count;
    }

    function incrementCountby1() public {
        count += 1;
    }

    function decrementCountby1() public {
        count -= 1;
    }
}