import _ from "@nomiclabs/hardhat-ethers";

import { ethers } from "hardhat";
import { expect } from "chai";

describe("hello world", function () {
  it("should say hi", async function () {
    const HelloWorld = await ethers.getContractFactory("HelloWorld");
    const hello = await HelloWorld.deploy();
    await hello.deployed();
    expect(hello.hello).to.equal("Hello, World!");
  });
});