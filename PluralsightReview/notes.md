# Notes from Review 

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
```solidity
bool flag; 
int signedNum;
uint unsignedNum;
int8, ..., int256;
uint, ..., uint256;
string;
address;
```

## Variables
Constants:
```solidity
uint myName constant = "John";
```

## Operators
```solidity
uint newVal = (a - b + c) * 2 / 4;
uint remainder = a % b;
uint power = a ** 2;
uint left = a << 2;
uint right = a >> 4;
num += 2;
num++;
```

## Comparison operators
```solidity
bool larger = a > b;
bool smaller = a < b;
bool exp = (a >= b) && (a <= c);
```

## Commenting
```solidity
// Single Line
/* Multi
Line 
Comments
Like 
Go
*/
```

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
2. Compile it. Because nodes in Ethereum don't run Solidity code.
3. Deploy it.
4. Interact with it.

## Changing a blockchain state
Deploy a contract, send ether, then change the contract state. Ethereum has a current state. You have to send a transaction to change it's state. Once that transaction get's executed, you have a new Ethereum state.
A transaction has several fields. 
1. The first is called nonce. Nonce is a transaction number from an account. 
2. The next two fields are gas price and gas limit. They are used as payments for executing a transaction.
3. The next field is a to -- a receiver's address.
4. Then we have value. It holds the amount of funds.
5. v, r, s are signatures used to verify the transactions
6. init or data field contains bytecode or method call. 

## Block Fields
1. Block number
2. Parent's block has
3. Executed transactions
4. New state of the network
5. Timestamp

## Contract Limitations
1. Contract execution is deterministic; the state change depends on the input
2. Any participant can validate transactions
3. Contracts cannot access outside resources, or generate truly random numbers.

## Payment for Computation
Pay per each executed command. 
The more computation, the greater the payment.
Payment is collected by nodes that provide infrastructure.
One reason for payment is to defend the network from attackers. 
### Gas
Price is calculated in gas. You can't buy, sell, or store gas. Fee is not estimated in Ether. Every transaction defines an exchange rate.
Every command has a price in gas. ```CREATE``` command in bytecode has more gas than ```ADD```.

Without enough gas, a contract will Fail to run. 

## Ethereum Node Types
1. Miners: execute transactions, generate blocks, get reward.
2. Full Nodes: verify transactions, store full blockchain, don't get reward.
3. Light Clients: processes some transactions (mobile apps for example), rely on full nodes for transaction validation.

## Ether Denominations
wei is the smallest. Ether = 1.

## Transactions and Calls
A call is the second way to interact with the Ethereum network. It doesn't change a state, free to execute, and faster.
Has view and pure modifiers.

## Deployment with Remix

## Remove Contracts
Use selfdestruct method. It costs negative gas, but the calls end. The transaction history remains on the blockchain and anyone can review them.

```solidity
address beneficiary = 0x123;
// send funds to the beneficiary address;
selfdestruct(beneficiary);
```