// SPDX-License-Identifier: UNLICENSED

pragma solidity <0.9.1;

contract Test{
    struct Value{
        address user;
        uint timestamp;
        uint msgValue;
    }

    Value[] public User;
    function sendEth() public payable {
        User.push(Value(msg.sender, block.timestamp,msg.value));
    }
}