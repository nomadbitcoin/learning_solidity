pragma solidity 0.5.1;

contract Mapping{
    uint256 public contador = 0;
    mapping(uint=>Pessoa) public people;
    
    address owner;
    
    modifier onlyOwner() {
        require(msg.sender == owner);  
        _;
        //require retorna True ou um erro caso seja false
        //msg contem metadatas como quem esta chamando o contrado
        //ira retornar True se quem chamou o contrato for quem o criou
        
    }
    struct Pessoa{
        uint _id;
        string _PrimeiroNome;
        string _SegundoNome;
    }
    
    constructor() public{
        owner = msg.sender;    
    }
    
    function adicionaPessoa(string memory _PrimeiroNome, string memory _SegundoNome) public onlyOwner{
        incrementaContador();
        people[contador] = Pessoa(contador, _PrimeiroNome, _SegundoNome);
    }
    function incrementaContador() internal{
        contador +=1;
    }
}