// SPDX-License-Identifier: MIT

pragma solidity ^0.4.0;

contract personIdentifier {
    int public stateIntVariable;
    address personidentifier;
    myStruct human;
    bool constant hashIncome = true;

    struct myStruct {
        string name; 
        uint myAge;
        bool isMarried;
        uint[] bankAccountNums;
    }

    modifier onlyBy(){
        if (msg.sender == personidentifier) {
            _;
        }
    }

    event ageRead(address, int);

    enum gender {male, female}

    function getAge(address _personidentifier) onlyBy() payable external returns (uint) {
        human = myStruct("Mac",30,false,new uint[](3));

        gender _gender = gender.male;

        ageRead(personidentifier, stateIntVariable);
    }
}