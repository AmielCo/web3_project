//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Hero {
    enum Class {
        Mage,
        Healer,
        Barbarian
    }
    mapping(address => uint256[]) addressToHeroes;

    function generateRandom() public view returns (uint) {
    return uint(keccak256(abi.encodePacked(block.difficulty, block.timestamp)));
}
//here

    function gerHeroes() public view returns (uint256[] memory) {
        return addressToHeroes[msg.sender];
    }

    
    function createHero(Class class) public payable {
        require(msg.value >= 0.05 ether, "please send more money !");

    }
}
