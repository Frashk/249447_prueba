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

    uint256 public cantidad;
    mapping(uint256 => Pelicula) public peliculas;

    modifier ejecutadoPor() {
        console.log("Ejecutado por: 249447 - Valverde Vasquez, Francisco Javier");
        _;
    }

    constructor() ejecutadoPor {
        cantidad = 0;
    }

    function agregarElemento(uint256 _id, string memory _titulo, uint256 _duracion) public ejecutadoPor {
        require(peliculas[_id].id == 0, "Pelicula con ese ID ya existe");
        require(_duracion > 0, "La duracion debe ser mayor a 0");
        peliculas[_id] = Pelicula(_id, _titulo, _duracion, true);
        cantidad++;
    }

    function contarElementos() public view ejecutadoPor returns (uint256) {
        return cantidad;
    }

    function inactivarElemento(uint256 _id) public ejecutadoPor {
        require(peliculas[_id].id != 0, "Pelicula no encontrada");
        peliculas[_id].estado = false;
    }

    function pintarElementosActivos() public view ejecutadoPor {
        // Con mapping no podemos iterar directamente,
        // por eso llevamos un registro de los IDs usados
        for (uint256 i = 1; i <= cantidad; i++) {
            if (peliculas[i].estado == true) {
                console.log("Pelicula activa:", peliculas[i].id, peliculas[i].titulo);
            }
        }
    }

}