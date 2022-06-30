// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Ex3_5 {

    uint public a = 3;
    function myFun() public returns(uint){
        a = 100;
        return a;
    }
    

}
