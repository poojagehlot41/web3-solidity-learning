// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract TokenEvent {

    mapping(address => uint) public balance;

    event Transfer(
        address indexed from,
        address indexed to,
        uint amount
    );

    constructor() {
        balance[msg.sender] = 5000;
    }

    function transfer(address receiver, uint amount) public {

        require(balance[msg.sender] >= amount, "Not enough tokens");

        balance[msg.sender] -= amount;
        balance[receiver] += amount;

        emit Transfer(msg.sender, receiver, amount);
    }
}