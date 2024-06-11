# MyToken

MyToken is a basic implementation of token contract designed to demonstrate the fundamental principles of creating and managing a custom token on the Ethereum blockchain. This contract includes functionalities for minting and burning tokens, along with public variables and mappings for token management.

## Description

The MyToken contract is a straightforward implementation of a custom token on the Ethereum blockchain. It defines a token named "MANASVI" with the symbol "MNV". The contract allows any user to mint new tokens, increasing the total supply, or burn tokens, reducing the total supply, as long as they have enough balance. 

## Getting Started

### Executing program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., HelloWorld.sol). Copy and paste the following code into the file:
```
// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract MyToken {

    // public variables here
    
    string public tokenName = "MANASVI";
    string  public tokenAbbr = "MNV";
    uint public totalSupply;

    // mapping variable here
    mapping(address => uint) public balances;

    // mint function
    function mint(address a,uint x) public {
        totalSupply += x;
        balances[a] += x;
        }

    // burn function
    function burn(address a,uint x) public {
        if(balances[a]>=x){
        totalSupply -= x;
        balances[a] -= x;
        }
    }


}
```


## Authors
Manasvi Awasthi
manasviplay235@gmail.com


