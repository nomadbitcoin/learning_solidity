pragma solidity 0.5.1;

contract MyContract{
    //declaramos a lista (array) estruturas primeiro e depois o tipo dessa estrutura de dados
    // Person[] public people;
    uint256 public peopleCount;
    
    //dicionarios
    mapping(uint => Person) public people;
    
    struct Person{
        string _firstName;
        string _lastName;
    }
    
    // funcao para adicionar uma Person a lista
    function addPerson(string memory _firstName, string memory _lastName) public{
        // people.push(Person(_firstName, _lastName));
        peopleCount +=1;
    }
    
    
    
    
    
    
    // ----------------------------------------------------------------------------
    // uso de enum (listas) para alterar o valor de uma variavel baseado em valores possiveis
    /*
    enum State { Waiting, Ready, Active } //listas
    State public state; //variavel "state" pode acessar "State" publicamente??
    
    constructor() public{
        state = State.Waiting;
    }
    
    //altera a variavel state para outro estado disponivel em State;
    function activate() public{
        state = State.Active;
    }
    
    //Verifica se o estado da variavel eh Active e retorna true or false
    function isActive() public view returns(bool){
        return state == State.Active;
    }
    */
    
    
    
    
    

    // ----------------------------------------------------------------------------
    // TIPOS DE DADOS - VARIAVEIS
    // DATATYPES
    
    /*
    string public constant stringValue = 'myString'; // #variavel constante nao pode ser mudada
    bool public myBool = true;
    int public myInt = -1; //tipos int podem ser negativos e tipos unsigned int nao podem.
    uint public myUnsignedInt = 1;
    uint8 public myuint8 = 8; //tamanho em bits
    uint256 public myUint256 = 99999; //256 bits eh o tamanho padarao
    */
    
    
}

