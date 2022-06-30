// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract quiz1 {
    function sendEther(address _address) public payable {
        (bool success,) =  _address.call{value:msg.value}("");
        require(success, "Failed");
    }
}
