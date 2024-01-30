// SPDX-License-Identifier: UNLICENSED
pragma solidity <0.9.1;

contract Loop{
    uint public sum;
    function loopCall() public {
        uint i;
        for(i=0; i<10; i++){
            sum+=i;
        }

        uint j=10;
        uint sum2;
        while(j>5){
            sum2+=j;
            j--;
        }
    }
}