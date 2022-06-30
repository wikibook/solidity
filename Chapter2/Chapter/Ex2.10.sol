// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 < 0.9.0;

contract Ex2_10 {
    bytes1 a = 0x01;
    bytes1 b = 0x03;

    function bitwise() public view returns (bytes1, bytes1, bytes1, bytes1) {
        return (a&b, a|b, a^b, ~a);
    }
}
