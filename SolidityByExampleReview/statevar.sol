// SPDX-License-Identfier: MIT
pragma solidity ^0.8.0;

contract SimpleStorage {
    // state variable to store a number
    uint public num;

    // You need to send a transaction to write to a state variable
    function set(uint _num) public {
        num = _num;
    }
    function get() public view returns (uint) {
        return num;
    }
}