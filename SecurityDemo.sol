// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract SecurityDemo {

    address public owner;
    uint public rewardRate = 10;
    bool public paused;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(
            msg.sender == owner,
            "Not Owner"
        );
        _;
    }

    function pause() public onlyOwner {
        paused = true;
    }

    function unpause() public onlyOwner {
        paused = false;
    }

    function setRewardRate(uint rate) public onlyOwner {

        require(
            !paused,
            "Contract Paused"
        );

        rewardRate = rate;
    }
}
