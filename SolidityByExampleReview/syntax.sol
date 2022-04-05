// SPDX-License-Identifier: MIT
// Compiler version must be between:
pragma solidity ^0.8.0;

contract Syntax {
    // Primitive Data Types:
    // boolean // int // uint // address
    bool public myBool = true;
    
    uint8 public myUint8 = 1;
    uint public myUintgives256 = 456; // uint is same as uint256
    uint256 public u = 123;

    int public aNegativeNum = -12;
    int128 public i = 123;
    int public newInteger = 480; // int is same as int256

    // minimum and maximum integers
    int public minInt = type(int).min;
    int public maxInt = type(int).max;

    address public addr = 0xCA35b7d915458EF540aDe6068dFe2F44E8fa733c;

    
}