const YanToken = artifacts.require("YanToken");

module.exports = function (deployer) {
  deployer.deploy(YanToken);
};
