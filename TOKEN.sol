// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract MyToken {

    // public variables here
    
    string public tokenName = "MANASVI";
    string  public tokenAbbr = "MNV";
    uint totalSupply;

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