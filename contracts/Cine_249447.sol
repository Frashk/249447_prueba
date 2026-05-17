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


}