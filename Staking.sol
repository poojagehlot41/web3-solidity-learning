// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Staking {

    mapping(address => uint) public balances;
    mapping(address => uint) public rewards;

    function stake() public payable {

        balances[msg.sender] += msg.value;

        rewards[msg.sender] += msg.value / 10;
    }

    function getBalance() public view returns(uint) {
        return balances[msg.sender];
    }

    function getReward() public view returns(uint) {
        return rewards[msg.sender];
    }

    function claimReward() public {

        uint reward = rewards[msg.sender];

        require(
            reward > 0,
            "No Reward Available"
        );

        rewards[msg.sender] = 0;
    }

    function withdraw(uint amount) public {

        require(
            balances[msg.sender] >= amount,
            "Insufficient Balance"
        );

        balances[msg.sender] -= amount;

        payable(msg.sender).transfer(amount);
    }

    function getContractBalance() public view returns(uint) {
        return address(this).balance;
    }
}