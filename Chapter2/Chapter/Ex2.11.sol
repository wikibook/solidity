// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 < 0.9.0;

contract Ex2_11 {
    uint a = 2 + 3 * 2;
    uint b = (2 + 3) * 2;
    bool c = !true == false;

    function results() public view returns(uint, uint, bool) {
        return (a, b, c);
    }

}
