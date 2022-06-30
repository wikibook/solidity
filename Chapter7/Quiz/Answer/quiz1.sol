// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract quiz1 {

    function revertFunction(uint _num) public pure returns(uint) {
       if(_num>=6) {
           revert("_num must not be more than 5");
       }
        return _num;
    }
}