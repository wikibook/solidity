// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Ex7_2 {
    function runRevert(uint _num) public pure returns(uint) {
        if(_num<=3){
            revert("Revert error : should input more than 3");
        }
        return _num;
    }
    function runRequire(uint _num) public pure returns(uint) {
        require(_num>3, "Require error : should input more than 3");
        return _num;
    }
}