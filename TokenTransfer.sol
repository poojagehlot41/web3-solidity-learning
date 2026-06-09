// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract TokenTransfer {

    string public name = "Pooja Coin";
    string public symbol = "PC";
    uint public totalSupply = 5000;

    mapping(address => uint) public balance;

    constructor() {
        balance[msg.sender] = totalSupply;
    }

    function transfer(address receiver, uint amount) public {

        require(balance[msg.sender] >= amount, "Not enough tokens");

        balance[msg.sender] -= amount;
        balance[receiver] += amount;
    }
}