// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.5.0 < 0.8.0;

    /*

        해당 조건에 맞는 라이브러리를 만들어 보세요.  
   
    */

contract quiz4 {
    using Math for uint;
     
    function subtraction(uint _num1,uint _num2) public pure returns(uint) {
        return _num1.sub(_num2);
    } 
}
