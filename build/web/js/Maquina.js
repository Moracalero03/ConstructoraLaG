/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */


$('body').on('click','#editar', function(){
    llenarFormulario($(this).closest('tr'))
});

$('body').on('click','#eliminar', function(){
    llenarFormulario($(this).closest('tr'))
});


function llenarFormulario(fila){
    var codigo = $(fila).children('td:eq(0)').html();
    var nombre = $(fila).children('td:eq(1)').html();
    var modelo = $(fila).children('td:eq(2)').html();
    var marca = $(fila).children('td:eq(3)').html();
    var tipo = $(fila).children('td:eq(4)').html();
    var Operativo = $(fila).children('td:eq(5)').html();
    var estado = $(fila).children('td:eq(6)').html();
    
    $('#txtIdM').val(codigo);
    $('#txtNombreM').val(nombre);
    $('#txtModelo').val(modelo);
    $('#txtMarca').val(marca);
    $('#txtTipo').val(tipo);
    $('#txtOperatividad').val(Operativo);
    $('#txtEstado').val(estado);
    
}

function limpiarFormulario() {
    document.getElementById("modalM").reset();
  }