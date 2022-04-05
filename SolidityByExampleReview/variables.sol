// SPDX-License-Identifier: MIT
// Compiler version begins from:
pragma solidity ^0.8.0;

contract Variables {

    // Variables
    /* 
    local variables: are declared inside a function and not stored on the blockchain
    state variables: are declared outside a function and are stored on the blockchain
    global variables: provides information about the blockchain

    */

    // state variables
    string public text = "Hello";
    uint public num = 123;

    function doSomething() public {
        // local variables
        uint i = 456;

        // global variables
        uint timestamp = block.timestamp;
        address sender = msg.sender;
    }

}