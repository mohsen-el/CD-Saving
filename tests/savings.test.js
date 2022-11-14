// Right click on the script name and hit "Run" to execute
const { expect } = require("chai");
const { ethers } = require("hardhat");

describe("Savings", function () {
  it("test initial value", async function () {
    const Savings = await ethers.getContractFactory("Savings");
    const savings = await Savings.deploy();
    await savings.deployed();
    console.log('savings deployed at:'+ savings.address)
    expect(await savings.balanceOf()).to.equal(0);
  });
});