require("@nomiclabs/hardhat-waffle");

require("dotenv").config();

module.exports = {
  solidity: "0.8.4",
  networks: {
    ropsten: {
      url: process.env.INFURA_ROPSTEN_URL,
      accounts: [process.env.ACCOUNT_PRIVATE_KEY_DEPLOYER],
    },
  },
};
