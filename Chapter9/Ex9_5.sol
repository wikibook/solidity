// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.0 <0.6.0;

contract Ex9_5 {

    event Obtain(address from, uint amount);
    function() external payable {
        emit Obtain(msg.sender, msg.value);
    }

    function getBalance(address _address) public view returns(uint) {
        return _address.balance;
    }

    function sendEther(address payable _address) public payable {
        _address.transfer(msg.value);
    }

}