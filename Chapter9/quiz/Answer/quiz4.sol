// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Math {
    uint public total;
    function mul(uint _num1, uint _num2) public {
        total = _num1 * _num2;
    } 
}

contract quiz4 {
    uint public total;
    function CallMath(address _address, uint _num1, uint _num2) public {
        (bool success,) = _address.delegatecall(
            abi.encodeWithSignature("mul(uint256,uint256)",_num1,_num2)            
            );
        require(success, "Failed");
    }
}
