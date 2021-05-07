pragma solidity 0.5.1;

contract Mapping{
    uint256 contador = 0;
    mapping(uint=>Pessoa) public people;
    
    struct Pessoa{
        uint _id;
        string _PrimeiroNome;
        string _SegundoNome;
    }
    function adicionaPessoa(string memory _PrimeiroNome, string memory _SegundoNome) public{
        contador +=1;
        people[contador] = Pessoa(contador, _PrimeiroNome, _SegundoNome);
    }
}