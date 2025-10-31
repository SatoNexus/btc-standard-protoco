const { expect } = require("chai");

describe("BTC Standard Contracts", function () {
  it("Should deploy all core contracts", async function () {
    const bUSD = await ethers.getContractFactory("bUSDToken");
    const sBTC = await ethers.getContractFactory("sBTCToken");
    const busd = await bUSD.deploy();
    const sbtc = await sBTC.deploy();
    expect(await busd.name()).to.equal("BitAnchor USD");
    expect(await sbtc.name()).to.equal("SatStandard BTC");
  });
});
