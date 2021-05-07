pragma solidity ^0.4.24;

contract LearningFunctions{
    string valor;
    
    constructor() public{
        valor = 'nas novas versoes a variavel nao precisa ser "construida"';
    }
    
    function get() public view returns(string){
        return valor;
    }
    
    function set(string _valor) public{
        valor = _valor;
    }
}