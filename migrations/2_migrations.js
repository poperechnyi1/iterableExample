var User = artifacts.require("./User.sol");
// var itMapsLib = artifacts.require("./itMapsLib.sol");

module.exports = function(deployer) {
  deployer.deploy(User);

};