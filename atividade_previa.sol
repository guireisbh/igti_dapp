pragma solidity ^0.5.9;

contract IGTI {
    string public objetivo;
    
    constructor (string memory _objetivo) public {
        objetivo = _objetivo;
    }

    function soma(int256 valor1, int256 valor2) public pure returns(int256){
        return valor1 + valor2;
    }
    
}
