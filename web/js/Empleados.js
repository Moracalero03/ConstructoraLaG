/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/ClientSide/javascript.js to edit this template
 */
$('body').on('click','#editar', function(){
    llenarFormulario($(this).closest('tr'));
});

$('body').on('click','#eliminar', function(){
    llenarFormulario($(this).closest('tr'));
});
function limpiarFormulario() {
    document.getElementById("modalE").reset();
     
     
  };

$('#modalE').on('hide.bs.modal', function (event) {
    $("#modalE input").val("");
    $("#txtId").val(0);       
    $("#modalE button").prop("disabled", false);
    $('#sRol').find('option:selected').attr('selected', false);
    $('#sEstado').find('option:selected').attr('selected', false);

});
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

<<<<<<< HEAD
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
=======

$(document).ready(function() {
    $('#btnAgregar').click(function(event) { 
         $('#mdlEmpleado').validetta({
            realTime: true,
            onValid: function(e) {
            event.preventDefault()
                var codigo = $('#txtIdEmpleado').val();
                var rol = $('#sRol').val();
                var empleado = $('#txtEmpleado').val();
                var usuario = $('#txtUsuario').val();
                var contrasena = $('#txtContrasena').val();
                var salario = $('#txtSalario').val();
                var foto = $('#txtFoto').val(); 
                var estado = $('#sEstado').val();
                
                $.post('EmpleadoServlet', {
                        txtIdEmpleado : codigo,
                        sRol : rol,
                        txtEmpleado : empleado, 
                        txtUsuario : usuario, 
                        txtContrasena : contrasena,
                        txtSalario : salario,
                        txtFoto : foto,
                        sEstado : estado
                })
        }
    });
});   
});  


$(document).ready(function() {
    $('#btnEditar').click(function(event) { 
         $('#mdlEmpleado').validetta({
            realTime: true,
            onValid: function(e) {
            event.preventDefault()
                var codigo = $('#txtIdEmpleado').val();
                var rol = $('#sRol').val();
                var empleado = $('#txtEmpleado').val();
                var usuario = $('#txtUsuario').val();
                var contrasena = $('#txtContrasena').val();
                var salario = $('#txtSalario').val();
                var foto = $('#txtFoto').val(); 
                var estado = $('#sEstado').val();
                
                $.post('EmpleadoServlet', {
                        txtIdEmpleado : codigo,
                        sRol : rol,
                        txtEmpleado : empleado, 
                        txtUsuario : usuario, 
                        txtContrasena : contrasena,
                        txtSalario : salario,
                        txtFoto : foto,
                        sEstado : estado
                })
        }
    });
});   
}); 

>>>>>>> c3a70dfac7b626fd8fc9e56c6d0ad68c36129712
