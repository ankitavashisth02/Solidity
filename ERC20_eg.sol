// SPDX-License-Identifier: UNLICENSED
pragma solidity <0.9.0;

contract ERC20{
    uint public totalSupply;
    mapping (address => uint) public Balance;
    string public name = "Ankita Sharma";
    string public symbol = "ANKITA";

    function mint(uint amt) public {
        Balance[msg.sender]+=amt;
        totalSupply+=amt;
    }
    // Minting new tokens to assign them to new address.

    function burn( uint amt ) public {
        require(Balance[msg.sender] >= amt, "Not enough balance");
        require(totalSupply>=amt,"not enough balance");
        Balance[msg.sender] -= amt;
        totalSupply -= amt;
    }
    // to burn the amount from the account.

    function balanceOf(address _address) public view returns(uint){
        return Balance[_address];
    }
    // to show the balance in the account.
}