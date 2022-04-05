# Notes from Review 
-- 
## Compiler Version
The current version is 0.8.13 so stating ```^0.8.0``` is okay.

## Function properties
public - makes it callable by anyone on the chain

# Smart Contracts
They can have several instances. You can call methods to change the state of a contract instance. Methods and fields are static.

```solidity
pragma solidity ^0.8.0;
contract Greeter {
    uint public val;
    function getValue() public returns(uint) {
        return val;
    }

}
```

## Data types
bool flag; 
int signedNum;
uint unsignedNum;
int8, ..., int256;
uint, ..., uint256;
string;
address;

## Variables
Constants
uint myName constant = "John";

## Operators
uint newVal = (a - b + c) * 2 / 4;
uint remainder = a % b;
uint power = a ** 2;
uint left = a << 2;
uint right = a >> 4;
num += 2;
num++;

## Comparison operators
bool larger = a > b;
bool smaller = a < b;
bool exp = (a >= b) && (a <= c);

## Commenting
// Single Line
/* Multi
Line 
Comments
Like 
Go
*/

## Return Values
Multiple values can be returned
```solidity
function getValues(uint a) returns (uint b, uint c) {
    return (a, a+1);
}
```

Or we spread it out:
```solidity
function getValuesBetter(uint a) returns (uint b, uint c) {
    b = a;
    c = a + 1;
}
```

## Encapsulation
Contracts are deployed on a public network. Any body on the network can call the method of a contract, and 
this can change the state of a contract. You need to specify what methods can be called from outside.
Doing this is similar to that of other object-oriented language.
External calling:
```solidity
function onlyFromOutside() external {

}
```
Global Calling:
```solidity
function accessibleFromAnywhere() public {

}
```
Ignoring a modifier means setting it to public by default. To restrict your function from external usage, use:
```solidity
function accessedInternally() internal {

}

function accessedPrivately() private {

}
```
The same applies to variables -- called fields. 
```solidity
uint public value; // can be read from outside
uint private value; // can be accessed only from inside
uint internal value; // can be accessed only from inside
```

## Creating Smart Contract
1. Write a Solidity Source code.
2. Compile it. Because nodes in Ethereum don't run Sol code.
3. Deploy it.
4. Interact with it.