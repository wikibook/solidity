// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Ex9_1 {
    
    function getBalance(address _address) public view returns(uint) {
        return _address.balance;
    }

    function getMsgValue() public payable returns(uint) {
        return msg.value;
    }
}