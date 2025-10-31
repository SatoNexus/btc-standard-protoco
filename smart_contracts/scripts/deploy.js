async function main() {
  const [deployer] = await ethers.getSigners();
  console.log("Deploying contracts with the account:", deployer.address);

  const bUSD = await ethers.getContractFactory("bUSDToken");
  const sBTC = await ethers.getContractFactory("sBTCToken");
  const Oracle = await ethers.getContractFactory("OracleAdapter");
  const AMM = await ethers.getContractFactory("AMMEngine");
  const Vault = await ethers.getContractFactory("VaultManager");

  const busd = await bUSD.deploy();
  const sbtc = await sBTC.deploy();
  const oracle = await Oracle.deploy();
  const amm = await AMM.deploy(busd.address, sbtc.address, 10000000);
  const vault = await Vault.deploy(busd.address, sbtc.address, oracle.address);

  console.log("bUSD deployed to:", busd.address);
  console.log("sBTC deployed to:", sbtc.address);
  console.log("Oracle deployed to:", oracle.address);
  console.log("AMM deployed to:", amm.address);
  console.log("VaultManager deployed to:", vault.address);
}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
