# MyToken

MyToken is a basic implementation of token contract designed to demonstrate the fundamental principles of creating and managing a custom token on the Ethereum blockchain. This contract includes functionalities for minting and burning tokens, along with public variables and mappings for token management.

## Description

The MyToken contract is a straightforward implementation of a custom token on the Ethereum blockchain. It defines a token named "MANASVI" with the symbol "MNV". The contract allows any user to mint new tokens, increasing the total supply, or burn tokens, reducing the total supply, as long as they have enough balance. 

## Getting Started

### Executing program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., Token.sol). Copy and paste the following code into the file:
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
Compile the Contract:
Click on the "Solidity Compiler" tab in the left-hand sidebar.
Ensure the "Compiler" option is set to "0.8.18" (or another compatible version).
Click on the "Compile MyToken.sol" button.

Deploy the Contract:

Click on the "Deploy & Run Transactions" tab in the left-hand sidebar.
Ensure the environment is set to "JavaScript VM (London)" for a local blockchain environment.
Select the "MyToken" contract from the dropdown menu.
Click on the "Deploy" button to deploy the contract.

Interact with the Contract:

Once the contract is deployed, you will see the deployed contract instance under the "Deployed Contracts" section in the left-hand sidebar.
Expand the deployed contract instance to see available functions.

Mint Tokens:

Find the mint function in the deployed contract instance.
Enter the address and amount of tokens to mint in the input fields (e.g., "0xYourAddress", 100).
Click on the mint button to mint the tokens.

Burn Tokens:

Find the burn function in the deployed contract instance.
Enter the address and amount of tokens to burn in the input fields (e.g., "0xYourAddress", 50).
Click on the burn button to burn the tokens.

## Authors
Manasvi Awasthi
manasviplay235@gmail.com


