/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function validarTexto(e) {
                tecla = e.keyCode;
                teclado = String.fromCharCode(tecla);

                if ((teclado < 'A' || teclado > 'z') && teclado != " ") {
                    return false;
                }
} 
            
function validarNumero(e) {
            tecla = e.keyCode;
            teclado = String.fromCharCode(tecla);

            if ((teclado < '0' || teclado > '9') && teclado != " ") {
                return false;
            }
} 
