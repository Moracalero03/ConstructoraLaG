/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/ClientSide/javascript.js to edit this template
 */
$('body').on('click','#editar', function(){
    llenarFormulario($(this).closest('tr'))
});

$('body').on('click','#eliminar', function(){
    llenarFormulario($(this).closest('tr'))
});
function limpiarFormulario() {
    document.getElementById("modalE").reset();
  }

function llenarFormulario(fila){
    var id = $(fila).children('td:eq(0)').html();
    var rol = $(fila).children('td:eq(1)').html();
    var nombre = $(fila).children('td:eq(2)').html();
    var usuario = $(fila).children('td:eq(3)').html();
    var contrasena = $(fila).children('td:eq(4)').html(); 
    var salario = $(fila).children('td:eq(5)').html();
    var foto = $(fila).children('td:eq(7)').html();
    var estado = $(fila).children('td:eq(8)').html();
    
    $('#txtIdEmpleado').val(id);
    $('#sRol option:contains('+rol+')').attr('selected', true);
    $('#txtEmpleado').val(nombre);
    $('#txtUsuario').val(usuario);
    $('#txtContrasena').val(contrasena);
    $('#txtSalario').val(salario);
    $('#txtFoto').val(foto);
    $('#sEstado option:contains('+estado+')').attr('selected', true);
    
}

