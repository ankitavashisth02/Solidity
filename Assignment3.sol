// SPDX-License-Identifier: UNLICENSED
pragma solidity <0.9.1;

contract Test{
    address public owner;
    event Received(address sender, uint amount);

    constructor(){
        owner = msg.sender;
    }

    function sendEther(address receiver, uint amount) public payable {
        payable(receiver).transfer(amount);
    }

    function checkBalance() public view returns(uint) {
        return address(this).balance;
    }

    function sendEtherToOwner() public payable {
        payable(owner).transfer(msg.value);
        emit Received(msg.sender, msg.value);
    }
}