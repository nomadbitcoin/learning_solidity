pragma solidity 0.5.1;

contract Mapping{
    uint256 public contador = 0;
    mapping(uint=>Pessoa) public people;
    uint256 openingTime = 1619620094;
    
    address owner;
    
    modifier onlyWhileOpen() {
        require(block.timestamp>= openingTime);  
        _;
        //a melhor forma de pegar o tempo atual eh pegando o timestamp do bloco
        //block contem metadatas do bloco
        //tempo eh contabilizado em timestamps (epoch times)
        
    }
    struct Pessoa{
        uint _id;
        string _PrimeiroNome;
        string _SegundoNome;
    }
    
    function adicionaPessoa(string memory _PrimeiroNome, string memory _SegundoNome) public onlyWhileOpen{
        incrementaContador();
        people[contador] = Pessoa(contador, _PrimeiroNome, _SegundoNome);
    }
    function incrementaContador() internal{
        contador +=1;
    }
}