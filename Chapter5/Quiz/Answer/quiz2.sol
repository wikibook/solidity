// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract quiz2 {
    
    uint [] public numbers;

    function addNumbers(uint _number) public {
        numbers.push(_number);
    }

    function getNumbers(uint _index) public view returns(uint) {
        return numbers[_index];
    }

    function deleteName() public {
        numbers.pop();
    }

}
