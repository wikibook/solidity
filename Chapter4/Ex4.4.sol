// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Ex4_3 {
   
    function fun1(uint a) public pure returns(uint) {
        if(a>=1){
            a = 1;
        }else if(a>=2){
            a = 2;    
        }else if(a>=3){
            a = 3;    
        }else{
            a = 4;
        }
        return a;
    }

    function fun2(uint a) public pure returns(uint) {
        if(a>=1){
            a = 1;
        }
        if(a>=2){
            a = 2;
        }
        if(a>=3){
            a = 3;
        }else{
            a = 4;
        }
        return a;
    }

}
