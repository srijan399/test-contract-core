import { ethers } from "hardhat";

async function main() {
  // Get the ContractFactory for the contract
  const simpleCounter = await ethers.deployContract("SimpleCounter");

  console.log("Deploying SimpleCounter...");

  // Wait for the deployment to complete
  await simpleCounter.waitForDeployment();

  // Get the deployed contract's address
  const contractAddress = await simpleCounter.getAddress();
  console.log("SimpleCounter deployed to:", contractAddress);
}

// Proper error handling
main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });
