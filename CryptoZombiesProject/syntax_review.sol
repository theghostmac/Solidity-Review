// SPDX-License-Identifier: MIT
/*
 Compiler version must be greater than or 
 equal to 0.8.0 and less than 0.9.0
*/
pragma solidity ^0.8.0;

contract ZombieFactory {

    uint dnaDigits = 16;
    uint dnaModulus = 10 ** dnaDigits;

    struct Zombie {
        string name;
        uint dna;
    }

    
}
