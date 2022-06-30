// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract quiz1 {

    /*

        해당 조건에 맞는 모디파이어를 만들어 보세요.  
    
    */
    
    function value(uint _num) public pure numMoreThan5(_num) returns(uint) {
        return _num;
    }
}
