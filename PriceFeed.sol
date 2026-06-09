// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract PriceFeed {

    int public ethPrice = 2500;

    function getPrice() public view returns(int) {
        return ethPrice;
    }
}
