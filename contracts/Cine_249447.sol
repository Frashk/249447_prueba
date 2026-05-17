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
        for (uint256 i = 0; i < peliculas.length; i++) {
            require(peliculas[i].id != _id, "Pelicula con ese ID ya existe");
        }
        require(_duracion > 0, "La duracion debe ser mayor a 0");
        peliculas.push(Pelicula(_id, _titulo, _duracion, true));
    }

    function contarElementos() public view ejecutadoPor returns (uint256) {
        return peliculas.length;
    }

    function inactivarElemento(uint256 _posicion) public ejecutadoPor {
        require(_posicion < peliculas.length, "Posicion fuera de rango");
        peliculas[_posicion].estado = false;
    }

    function pintarElementosActivos() public view ejecutadoPor {
        for (uint256 i = 0; i < peliculas.length; i++) {
            if (peliculas[i].estado == true) {
                console.log("Pelicula activa:", peliculas[i].id, peliculas[i].titulo);
            }
        }
    }

}