// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface IOracleAdapter {
    function getBTCUSDPrice() external view returns (uint256);
}

contract OracleAdapter is IOracleAdapter {
    uint256 private btcUsdPrice;

    function setBTCUSDPrice(uint256 _price) external {
        btcUsdPrice = _price;
    }

    function getBTCUSDPrice() external view override returns (uint256) {
        return btcUsdPrice;
    }
}
