// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Ex9_2 {
    
    address public owner;
    modifier onlyOwner() {
        require(owner == msg.sender, "Error: caller is not the owner");
        _; 
    }
    constructor () {
        owner = msg.sender;
    }

    function getBalance(address _address) public view onlyOwner() returns(uint) {
        return _address.balance;
    }

    function getMsgValue() public payable onlyOwner() returns(uint) {
        return msg.value;
    }
}