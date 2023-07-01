// SPDX-License-Identifier: MIT

// Version of compiler
pragma solidity ^0.8.18;

contract hadcoin_ico {

    // Introducing the maximum number of Nicoins available for sale
    uint public max_nicoins = 1_000_000;

    // Introducing the USD to Nicoin conversion rate
    uint public usd_to_nicoin = 1_000;

    // Introducing the total number of Nicoins that have been bought by investors
    uint public total_nicoins_bought = 0;

    // Mapping from the investor address to its equity in Nicoin and USD
    mapping(address => uint) equity_nicoins;
    mapping(address => uint) equity_usd;

    // Checking if an investor can by Nicoins
    modifier can_buy_hadcoins(uint usd_invested) {
        require(usd_invested * usd_to_nicoin + total_nicoins_bought <= max_nicoins);
        _;
    }

    // Getting the equity of an investor in Nicoins
    function equity_in_nicoins(address investor) external view returns (uint) {
        return equity_nicoins[investor];
    }


    // Getting the equity of an investor in USD
    function equity_in_usd(address investor) external view returns (uint) {
        return equity_usd[investor];
    }

    // Buying Nicoins
}


