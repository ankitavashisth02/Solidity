// SPDX-License-Identifier: UNLICENSED
pragma solidity <0.9.1;

contract Test{
    uint public num;

    function check1(bool value) public {
        require(value==true,"not true");
        num=100;
    }

    function check2(bool value) public returns(string memory){
        if(value==true){
            num=100;
        }else{
            return "not true";
        }
    }
}