// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Voting {

    mapping(string => uint) public votes;

    function vote(string memory candidate) public {
        votes[candidate]++;
    }
}