pragma solidity ^0.5.1;

contract learninFuncions{
    string public valor = 'Valor'; //ao adicionar public nao precisa mais de uma funcao para poder acessala.
    
    function set(string memory _valor) public{
        valor = _valor;
    }
}