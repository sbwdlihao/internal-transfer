var InternalTransfer = artifacts.require("./InternalTransfer.sol");

module.exports = function(deployer) {
  deployer.deploy(InternalTransfer);
};