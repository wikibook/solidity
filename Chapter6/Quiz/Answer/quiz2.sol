// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Math {

    function add(uint _num1, uint _num2) public pure returns(uint) {
        return _num1 + _num2;
    }

}
contract quiz2 {

    Math internal instance = new Math();
    function addNumbers(uint _num1, uint _num2) public view returns(uint) {
        return instance.add(_num1,_num2);
    }
}