const YanToken = artifacts.require("YanToken.sol");

contract("YanToken", function(accounts){

    it('sets the total supply upon deployment', function(){
        return YanToken.deployed().then(function(instance){
            tokenInstance = instance;
            return tokenInstance.totalSupply();
        }).then(function(totalSupply){
            assert.equal(totalSupply.toNumber(), 1000000, 'sets the total supply to 1.000.000');
        })
    });
})
