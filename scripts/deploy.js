const { ethers } = require("hardhat");

const main = async () => {
  const SimpleStorage = await ethers.getContractFactory("SimpleStorage");
  console.log("DEPLOYING CONTRACT");
  const simpleStorage = await SimpleStorage.deploy();
  await simpleStorage.deployed();
  console.log(`DEPLOYED CONTRACT TO ${simpleStorage.address}`);
};

main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.log(error);
    process.exit(1);
  });
