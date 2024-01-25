// SPDX-License-Identifier: UNLICENSED
pragma solidity <0.9.1;

contract EtherWallet{
    address payable public owner;

    constructor(){
        owner = payable(msg.sender);
    }

    // receive() external payable{}

    function addingEther() payable public {
        payable(msg.sender).transfer(1 ether);
    }

    function withDraw(uint _amount) external {
        require(owner == msg.sender, "not the owner");
        payable(msg.sender).transfer(_amount);
    }

    function getBalance() external view returns(uint){
        return address(this).balance ;
    }

    
}