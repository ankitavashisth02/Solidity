// SPDX-License-Identifier: UNLICENSED

pragma solidity <0.9.1;

contract GlobalVariable{
    function returnTime() public view returns(uint){
        return block.timestamp;
    }

    // caller address
    function callerAddress() public view returns(address){
        return msg.sender;
    }

    //ether sending(money)
    function ethSendByUser() public payable returns(uint){
        return msg.value;
    }
}