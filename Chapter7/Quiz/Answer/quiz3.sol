// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract quiz3 {
    uint[] arr;
    function arrPop() public {
        arr.pop();
    }
    function arrPopWithTryCatch() public returns(bool) {
        try this.arrPop() {
            return (true);
        } catch {
            return (false);
        }
    }
}