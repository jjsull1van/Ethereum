var studentcontract = artifacts.require("./StudentContract.sol");

module.exports = function(deployer) {
  deployer.deploy(studentcontract);
};
