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

    // function doSomething() public {
    //     // local variables
    //     uint i = 456;

    //     // global variables
    //     uint timestamp = block.timestamp;
    //     address sender = msg.sender;
    // }

    // Constants
    /*
    constants are hard coded and can save gas cost
    constant variables are in capital conventionally
    */
    address public constant MY_ADDRESS = 0xEbBe13f0F5bF9279f6b74EcBbA91AE06c0D714d7;
    uint public constant MY_UINT = 123;

    // Immutability
    // immutable vars are like constants
    // they cannot be modified afterwards
    address public immutable MY_ADDRESS1;
    uint public immutable NEWINT;

    constructor (uint _myUint) {
        MY_ADDRESS1 = msg.sender;
        NEWINT = _myUint;
    }

}