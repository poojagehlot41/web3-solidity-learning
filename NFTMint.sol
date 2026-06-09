// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract NFTMint {

    uint public nextTokenId = 1;

    mapping(uint => address) public ownerOf;

    function mint() public {
        ownerOf[nextTokenId] = msg.sender;
        nextTokenId++;
    }
}