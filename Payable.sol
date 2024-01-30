// SPDX-License-Identifier: UNLICENSED

pragma solidity <0.9.1;

contract Payable{
    address public owner;

    function sendEtherToAddress(address receiver) public payable {
        payable(receiver).transfer(msg.value);
    }
    function sendEtherToContract() public payable {
    }
}