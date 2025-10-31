# ⚙ Token Structure & Protocol Design  
### BTC Standard Protocol — Technical Architecture

---

## 🪙 1. Overview  

The *BTC Standard Protocol* establishes a dual-token system designed to Bitcoinize the global economy while maintaining stability and usability.

### Tokens:
- *bUSD (BitAnchor):* Bitcoin-backed stablecoin pegged to the value of *1 USD in satoshis*.  
- *sBTC (SatStandard):* Bitcoinized accounting unit — expresses prices directly in satoshis.

---

## 🔁 2. Token Dynamics  

### *a. bUSD — The Bitcoinized Dollar*
- *Peg:* 1 bUSD = 1 USD worth of BTC (satoshis)
- *Backing:* Fully collateralized by wrapped BTC reserves  
- *Purpose:* Provide a stable value within the Bitcoin ecosystem  
- *Mechanism:*
  - Uses an *Oracle* to determine the current BTC/USD price  
  - Adjusts the amount of BTC locked per bUSD to maintain peg  
  - Smart contracts ensure transparency and auditable collateral

### *b. sBTC — The Bitcoin Standard Unit*
- *Peg:* 1 sBTC = 1 satoshi  
- *Purpose:* Used for pricing, accounting, and direct Bitcoin-based value representation  
- *Conversion:* bUSD can be converted into sBTC at market rates, using AMM (Automated Market Maker) logic.

---

## 🧠 3. System Architecture  

| Component | Description |
|------------|-------------|
| *Oracle* | Feeds real-time BTC/USD exchange rate data to the protocol |
| *VaultManager* | Manages Bitcoin collateral, issuance, and burning of bUSD |
| *AMM (Automated Market Maker)* | Allows seamless conversion between bUSD and sBTC |
| *User Interface Layer* | Wallets, dashboards, and API endpoints for users and merchants |

---

## 💡 4. Conversion Flow  

1. *Deposit:* The user deposits Bitcoin into the *VaultManager*.  
2. *Oracle Update:* The *Oracle* provides the current BTC/USD price.  
3. *Minting:* The VaultManager mints the corresponding amount of *bUSD* based on the BTC deposit.  
4. *Optional Conversion:* The user may convert *bUSD → sBTC* through the AMM at the prevailing rate.  
5. *Redemption:* Users can redeem bUSD back into BTC at any time.

---

## 📊 5. Example — Conversion Logic  

| Action | Input | Output | Notes |
|--------|--------|---------|-------|
| Deposit BTC | 0.001 BTC | 100 bUSD | assuming 1 BTC = 100,000 USD |
| Convert to sBTC | 100 bUSD | 10,000,000 sBTC | based on BTC price feed |
| Redeem | 100 bUSD | 0.001 BTC | maintains peg via Oracle |

---

## 🔒 6. Security and Audit  

- *Transparency:* All reserves verifiable on-chain  
- *Decentralized Oracle:* Prevents manipulation of BTC/USD rate  
- *Collateral Ratio:* Maintained above 100%  
- *Audits:* Conducted periodically by the MonetaBTC Foundation  

---

## 🏛 7. Governance  

Governance is managed by the *MonetaBTC Foundation*, responsible for:
- Oracle selection and maintenance  
- Protocol upgrades and audits  
- Community governance mechanisms (future DAO structure)  

---

## 🌍 8. Economic Impact  

- Enables *stable Bitcoin-denominated transactions*  
- Protects users and merchants from BTC volatility  
- Facilitates *cross-border payments* and *DeFi integration*  
- Simplifies *global commerce* with Bitcoin-based stable pricing  

> Businesses can finally accept Bitcoin payments (via bUSD) without worrying about BTC price fluctuations — each bUSD will always equal 1 USD worth of satoshis.

---

## 🧩 9. Diagram Reference  

For visual representation, see:  
protocol_design/architecture_diagram.png

---

