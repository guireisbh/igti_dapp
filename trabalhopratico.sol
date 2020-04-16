pragma solidity ^0.6.6;
	
contract Aluguel{
    string public Locatario;
    string public Locador;
    uint256 private valor;
    uint256 constant numeroMaximoLegalDeAlgueisParaMulta = 3;
    
    constructor(string memory nomeLocador, string memory nomeLocatario, uint256 valorDoAluguel) public {
        Locador = nomeLocador;
        Locatario = nomeLocatario;
        valor = valorDoAluguel;
    }
    function valorAtualDoAluguel() public view returns (uint256) {
        return valor;
    }
    function simulaMulta(uint256 mesesRestantes, uint256 totalMesesContrato)
    public
    view
    returns(uint256 valorMulta) {
        valorMulta = valor*numeroMaximoLegalDeAlgueisParaMulta;
        valorMulta = valorMulta/totalMesesContrato;
        valorMulta = valorMulta*mesesRestantes;
        return valorMulta;
    }
        function reajustaAluguel(uint256 percentualReajuste) public {
        uint256 valorDoAcrescimo = 0;
        valorDoAcrescimo = ((valor*percentualReajuste)/100);
        valor = valor + valorDoAcrescimo;
    }
	}
