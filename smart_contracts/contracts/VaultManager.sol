// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./bUSDToken.sol";
import "./sBTCToken.sol";

contract VaultManager {
    bUSDToken public busd;
    sBTCToken public sbtc;
    address public oracle;

    mapping(address => uint256) public userDeposits;

    constructor(address _busd, address _sbtc, address _oracle) {
        busd = bUSDToken(_busd);
        sbtc = sBTCToken(_sbtc);
        oracle = _oracle;
    }

    function depositBTC(address user, uint256 btcValueUSD) external {
        userDeposits[user] += btcValueUSD;
        busd.mint(user, btcValueUSD);
    }

    function redeemBTC(address user, uint256 btcValueUSD) external {
        busd.burn(user, btcValueUSD);
        require(userDeposits[user] >= btcValueUSD, "Insufficient collateral");
        userDeposits[user] -= btcValueUSD;
    }
}
