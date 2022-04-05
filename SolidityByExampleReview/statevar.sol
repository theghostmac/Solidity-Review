// SPDX-License-Identifier: MIT
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

    // ether and wei
    /* transactions are paid with ether. 1 ether = 10**18 wei.

    */
    uint public oneWei = 1 wei;
    bool public isOneWei = 1 wei == 1;

    uint public oneEther = 1 ether;
    bool public isOneEther = 1 ether == 1e18;

    // gas and gas price
    // ether = gas spent * gas price
    // gas bounds
    // gas limit and block gas limit

    uint public i = 0;
    // forever() runs a loop until all gas finishes and transaction fails.
    function forever() public {
        while(true) {
            i += 1;
        }
    }

}