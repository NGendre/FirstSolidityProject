const Game = artifacts.require('./contract.sol');

module.exports = function(deployer){
  deployer.deploy(Game);
};
