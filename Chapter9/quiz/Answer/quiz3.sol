// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Math {
    function mul(uint _num1, uint _num2) public pure returns(uint) {
        return _num1 * _num2;
    } 
}

contract quiz3 {

    function CallMath(address _address, uint _num1, uint _num2) public returns(bytes memory) {
        (bool success,bytes memory output) = _address.call(
            abi.encodeWithSignature("mul(uint256,uint256)",_num1,_num2)            
            );
        require(success, "Failed");
        return output;
    }
}
