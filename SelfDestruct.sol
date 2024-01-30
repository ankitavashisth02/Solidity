// SPDX-License-Identifier: UNLICENSED
pragma solidity <0.9.1;

contract Transfer {
    address payable public manager;
    bool destroyed;

    modifier isNotDestroyed{
        require(destroyed!=true, "contract is destroyed");
        _;
    }

    constructor(){
        manager = payable(msg.sender);
    }

    function sendEther() public payable isNotDestroyed {

    }

    function checkBalance() public view isNotDestroyed returns(uint){
        return address(this).balance;
    }

    receive() external payable isNotDestroyed {

    }

    function destroy() public isNotDestroyed {
        require(manager == msg.sender,"You are not the manager");
        manager.transfer(checkBalance());
        destroyed = true;
    }

    // function destroy() public {
    //     require(msg.sender == manager, "you are not the manager");
    //     selfdestruct(manager);
    // }
}