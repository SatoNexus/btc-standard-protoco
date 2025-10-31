// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./bUSDToken.sol";
import "./sBTCToken.sol";

contract AMMEngine {
    bUSDToken public busd;
    sBTCToken public sbtc;

    uint256 public exchangeRate; // satoshis per USD

    constructor(address _busd, address _sbtc, uint256 _initialRate) {
        busd = bUSDToken(_busd);
        sbtc = sBTCToken(_sbtc);
        exchangeRate = _initialRate;
    }

    function setExchangeRate(uint256 _rate) external {
        exchangeRate = _rate;
    }

    function convertBUSDtoSBTC(uint256 busdAmount) external {
        uint256 sbtcAmount = busdAmount * exchangeRate;
        busd.burn(msg.sender, busdAmount);
        sbtc.mint(msg.sender, sbtcAmount);
    }
}
