const main = async () => {
  const Transactions = await hre.ethers.getContractFactory("Transactions");
  const transactions_instance = await Transactions.deploy();

  await transactions_instance.deployed();

  console.log("Transactions deployed to:", transactions_instance.address);
};

const runMain = async () => {
  try {
    await main();
    process.exit(0);
  } catch (error) {
    console.error(error);
    process.exit(1);
  }
};

runMain();

//Deployed : 0xCbB797fC10B73Be1e012786C79CC80213705D115
