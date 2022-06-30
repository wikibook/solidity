// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Ex5_4 {
    
    uint[] public array1 = [97,98];
    string[5] public array2 = ["apple", "banna", "Coconut"];

    function getLength1() public view returns(uint) {
        return array1.length;
    } 
    
    function getLength2() public view returns(uint) {
        return array2.length;
    } 

    function addArray1(uint _value) public {
        array1.push(_value);
    }
    //오류 발생
    /* 
    function addArray2(string memory _value) public {
        array2.push(_value);
    }
    */
    function changeArray1(uint _index, uint _value) public {
        array1[_index] = _value;
    }

    function changeArray2(uint _index, string memory _value) public {
        array2[_index] = _value;
    }
}
