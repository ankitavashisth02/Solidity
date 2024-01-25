// SPDX-License-Identifier: UNLICENSED
pragma solidity <0.9.1;

contract EventsInSolidity{
    event Logging(address sender, string str);
    function printing() public {
        emit Logging(msg.sender,"Hello World!");
    }
}