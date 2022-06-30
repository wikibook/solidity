// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Ex4_11 {
    function fun1() public pure returns(uint) {
       uint result = 0;
       for(uint a = 1; a<2; ++a){
           for(uint b = 2; b<4; ++b){
               result = result + (a*b); 
           }  
       }
       return result;
    }
}
