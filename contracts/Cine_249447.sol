// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

import "hardhat/console.sol";

contract Cine249447 {

    struct Pelicula {
        uint256 id;
        string titulo;
        uint256 duracion;
    }

    Pelicula[] public peliculas;

    constructor() {
        console.log("Ejecutado por: 249447 - Valverde Vasquez, Francisco Javier");
    }

    function agregarElemento(uint256 _id, string memory _titulo, uint256 _duracion) public {
        peliculas.push(Pelicula(_id, _titulo, _duracion));
        console.log("Ejecutado por: 249447 - Valverde Vasquez, Francisco Javier");
    }

    function contarElementos() public view returns (uint256) {
        console.log("Ejecutado por: 249447 - Valverde Vasquez, Francisco Javier");
        return peliculas.length;
    }


}
