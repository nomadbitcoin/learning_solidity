pragma solidity 0.5.1;

contract Sets{    
    //conjuntos
    enum estados_modelo {Waiting, Ready, Active}
    estados_modelo public estado; // a variavel "estado" acessa os itens guardados em "estados_modelo"
    
    constructor() public{
        estado = estados_modelo.Waiting;
    }
    function activate() public{
        estado = estados_modelo.Active;
    }
    function CheckisActive() public view returns(bool){
        return estado == estados_modelo.Active;
    }
    //END - conjuntos
}