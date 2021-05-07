pragma solidity >=0.4.22 <0.9.0;

contract YanToken {
    //Cosntructor
    //Set the total number of tokens
    //Read the total num    ber of tokens
    uint256 public totalSupply;
    
    function YanTokens() public{
        totalSupply = 1000000;
    }
}
