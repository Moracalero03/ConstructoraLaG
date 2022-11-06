/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */

//alert("Bienvenido");
$('body').on('click','#editar', function(){
    llenarFormulario($(this).closest('tr'));
});

$('body').on('click','#eliminar', function(){
    llenarFormulario($(this).closest('tr'));
});


$('#mdlMaquina').on('hide.bs.modal', function (event) {
    $("#mdlMaquina input").val("");
    $("#txtId").val(0);       
    $('#sEstado').find('option:selected').attr('selected', false);

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
    $('#sEstado option:contains('+estado+')').attr('selected',true);
    
}


function agregar(){    
    jQuery( document ).ready(function() { 
     jQuery('#btnAgregar').prop("disabled", false);
      jQuery('#btnEditar').prop("disabled", true);
      jQuery('#btnEliminar').prop("disabled", true);

            // true para desactivarlo o false para volverlo a activar
   }); 
}


function modificar(){    
    jQuery( document ).ready(function() { 
      jQuery('#btnAgregar').prop("disabled", true);
      $('#btnEditar').prop("disabled", false);
       jQuery('#btnEliminar').prop("disabled", true);
    
   }); 
}

function eliminar(){
        jQuery( document ).ready(function() { 
      $('#btnAgregar').prop("disabled", true);
       $('#btnEditar').prop("disabled", true);  
        jQuery('#btnEliminar').prop("disabled", false);
    
   }); 
}

$(document).ready(function() {
    $('#btnAgregar').click(function(event) { 
         $('#mdlMaquina').validetta({
            realTime: true,
            onValid: function(e) {
            event.preventDefault()
                var codigo = $('#txtIdM').val();
                var nombre = $('#txtNombreM').val();
                var modelo = $('#txtModelo').val();
                var marca = $('#txtMarca').val();
                var tipo = $('#txtTipo').val();
                var Operativo = $('#txtOperatividad').val();
                var estado = $('#sEstado').val();
                
                $.post('MaquinasServlet', {
                        txtIdM : codigo,
                        txtNombreM : nombre, 
                        txtModelo : modelo, 
                        txtMarca : marca,
                        txtTipo : tipo,
                        txtOperatividad : Operativo,
                        sEstado : estado
                })
        }
    });
});   
}); 

$(document).ready(function() {
    $('#btnEditar').click(function(event) { 
         $('#mdlMaquina').validetta({
            realTime: true,
            onValid: function(e) {
            event.preventDefault()
                var codigo = $('#txtIdM').val();
                var nombre = $('#txtNombreM').val();
                var modelo = $('#txtModelo').val();
                var marca = $('#txtMarca').val();
                var tipo = $('#txtTipo').val();
                var Operativo = $('#txtOperatividad').val();
                var estado = $('#sEstado').val();
                
                $.post('MaquinasServlet', {
                        txtIdM : codigo,
                        txtNombreM : nombre, 
                        txtModelo : modelo, 
                        txtMarca : marca,
                        txtTipo : tipo,
                        txtOperatividad : Operativo,
                        sEstado : estado
                })
        }
    });
});   
});

