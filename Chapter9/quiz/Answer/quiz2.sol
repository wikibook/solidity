// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract quiz2 {

    receive() external payable {

    }
    function getBalance() public view returns(uint) {
        return address(this).balance;
    }
    function sendEther() public payable {
        payable(address(this)).transfer(msg.value);
    }
}
