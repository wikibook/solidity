// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract quiz3 {

    function fun1() public pure returns(uint) {
        uint result = 0;
        uint a = 10; 
        while(true){
            if(a==5){
                break;
            }
            result = result + a;
            --a;

        }
        return result;
    }

}
