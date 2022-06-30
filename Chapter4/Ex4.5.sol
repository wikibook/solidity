// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Ex4_5 {
   
    function fun1() public pure returns(uint) {
        uint a = 0;
        a += 1;
        a += 2;
        a += 3;
        a += 4;
        a += 5;
        a += 6;
        a += 7;
        a += 8;
        a += 9;
        a += 10;
        return a;
    }

}
