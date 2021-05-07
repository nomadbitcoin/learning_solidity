pragma solidity 0.5.1;

contract Mapping{
    uint256 public contador = 0;
    mapping(uint=>Pessoa) public people;
    
    struct Pessoa{
        uint _id;
        string _PrimeiroNome;
        string _SegundoNome;
    }
    function adicionaPessoa(string memory _PrimeiroNome, string memory _SegundoNome) public{
        incrementaContador();
        people[contador] = Pessoa(contador, _PrimeiroNome, _SegundoNome);
    }
    function incrementaContador() internal{
        contador +=1;
    }
}