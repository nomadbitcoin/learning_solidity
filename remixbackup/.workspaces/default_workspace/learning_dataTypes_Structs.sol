pragma solidity 0.5.1;

contract Structs{
    //structs (tipo objetos?)
    Pessoa[] public people; //people eh um array que contem dados do tipo Pessoa;
    uint256 public peopleCount;
    
    struct Pessoa{
        string _PrimeiroNome;
        string _SegundoNome;
    }
    function addPerson(string memory _PrimeiroNome, string memory _SegundoNome) public{
        people.push(Pessoa(_PrimeiroNome, _SegundoNome));
        peopleCount +=1;
    }
    //END - structs
}