// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Ex7_3 {

    event ErrorReason1(string reason);
    event ErrorReason2(uint errorCode);
    event ErrorReason3(bytes lowLevelData);

    function output5(uint _num) public pure returns(uint) { 
        if(_num>=6) {
            revert("_num should be 5");
        }
        if(_num<=4){
            assert(false);
        }
        return 5;
    }
    
    function output5WithTryCatch(uint _num) public returns(uint256, bool) {
        
        try this.output5(_num) returns (uint256 value) {
            return(value, true);
        } catch Error(string memory reason) {
            emit ErrorReason1(reason);
            return(0, false);
        } catch Panic(uint errorCode) {
            emit ErrorReason2(errorCode);
            return(0, false);
        } catch (bytes memory lowLevelData) {
            emit ErrorReason3(lowLevelData);
            return(0, false);
        }
    }
}