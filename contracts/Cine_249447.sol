// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;

import "hardhat/console.sol";

contract Cine249447 {

    struct Pelicula {
        uint256 id;
        string titulo;
        uint256 duracion;
        bool estado;
    }

    Pelicula[] public peliculas;

    modifier ejecutadoPor() {
        console.log("Ejecutado por: 249447 - Valverde Vasquez, Francisco Javier");
        _;
    }

    constructor() ejecutadoPor {
    }

    function agregarElemento(uint256 _id, string memory _titulo, uint256 _duracion) public ejecutadoPor {
        // Validar id no repetido
        for (uint256 i = 0; i < peliculas.length; i++) {
            require(peliculas[i].id != _id, "Pelicula con ese ID ya existe");
        }
        // Validar que la duracion sea mayor a 0
        require(_duracion > 0, "La duracion debe ser mayor a 0");

        peliculas.push(Pelicula(_id, _titulo, _duracion, true));
    }

    function contarElementos() public view ejecutadoPor returns (uint256) {
        return peliculas.length;
    }

}