// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract TokenBalance {

    string public name = "Pooja Coin";
    string public symbol = "PC";
    uint public totalSupply = 5000;

    mapping(address => uint) public balance;

    constructor() {
        balance[msg.sender] = totalSupply;
    }
}