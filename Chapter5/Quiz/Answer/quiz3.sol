// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract quiz3 {
    
    struct Market {
        string itemName;
        uint price;
    }

    Market [] public openMarket;

    function sell(string memory _itemName, uint _price) public {
        openMarket.push(Market(_itemName, _price));
    }

    function search(string memory _itemName) public view returns(uint) {
        for(uint index = 0; index<openMarket.length; ++index) {
            if(keccak256(bytes(openMarket[index].itemName)) == keccak256(bytes(_itemName))){
                return openMarket[index].price;
            }
        }
        return 0;
    }

}
