// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

    /*

        해당 조건에 맞는 모디파이어를 만들어 보세요.  

    */

contract quiz2 {
    function minus10(uint _num) public pure returns(uint) {
        require(_num>=10, "_num must be equivalent to or more than 10");
        return _num - 10;
    }
    function plus10(uint _num) public pure returns(uint) {
        require(_num>=10, "_num must be equivalent to or more than 10");
        return _num + 10;
    }
}
