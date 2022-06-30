// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 < 0.9.0;

contract Random {

    event paidAddress(address indexed sender, uint256 payment);
    event winnerAddress(address indexed winner);

    modifier onlyOwner() {
        require(msg.sender == owner,"Ownable: caller is not the owner");
        _;
    }

    mapping (uint256=> mapping(address => bool)) public paidAddressList;

    address public owner;
    string private key1;
    uint private key2;
    uint private winnerNumber = 0;
    
    uint public round = 1;
    uint public playNumber = 0; 
    
    constructor(string memory _key1, uint _key2){
        owner = msg.sender;
        key1 = _key1;
        key2 = _key2;
        winnerNumber = 1; 
    }

    receive() external payable {
        require(msg.value == 10**16, "Must be 0.01 ether.");
        require(paidAddressList[round][msg.sender] == false, "Must be the first time.");
        paidAddressList[round][msg.sender] = true;
        ++playNumber;

        if(playNumber == winnerNumber){
            (bool success,)= msg.sender.call{value:address(this).balance}("");
            require(success, "Failed");
            playNumber = 0;
            ++round;
            winnerNumber = randomNumber();
            emit winnerAddress(msg.sender);
        }else{
            emit paidAddress(msg.sender,msg.value);
        }
    }

    function randomNumber() private view returns(uint) {
        uint num = uint(keccak256(abi.encode(key1))) + key2 + (block.timestamp) + (block.number);
        return (num - ((num / 10) * 10))+1;
    }

    function setSecretKey(string memory _key1, uint _key2) public onlyOwner() {
        key1 = _key1;
        key2 = _key2;
    }

    function getSecretKey() public view onlyOwner() returns(string memory, uint){
        return(key1,key2);
    }

    function getWinnerNumber() public view onlyOwner() returns(uint256){
        return winnerNumber;
    }

    function getRound() public view returns(uint256){
        return round;
    }

    function getbalance() public view returns(uint256){
        return address(this).balance;
    } 
}

