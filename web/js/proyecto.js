/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */



$('body').on('click', '#modificar', function(){
    llenarFormulario($(this).closest('tr'));
  
});

$('body').on('click', '#eliminar', function (){
    llenarFormulario($(this).closest("tr"));
}); 


//limpiar formulario
$('#mdlProyecto').on('hide.bs.modal', function (event) {
    $("#mdlProyecto input").val("");
    $("#txtId").val(0);       
    $("#mdlProyecto textarea").val("");
    $('#sMunicipio').find('option:selected').attr('selected', false);
    $('#sEstado').find('option:selected').attr('selected', false);

});


function llenarFormulario(fila){
    var id = $(fila).children('td:eq(0)').html();
    var nombre = $(fila).children('td:eq(1)').html();
    var municipio = $(fila).children('td:eq(2)').html();
    var estado = $(fila).children('td:eq(3)').html(); 
    var comentario = $(fila).children('td:eq(4)').html(); 
    var costoI = $(fila).children('td:eq(5)').html();
    var costoF = $(fila).children('td:eq(6)').html();
    var fechaI = $(fila).children('td:eq(7)').html();
    var fechaF = $(fila).children('td:eq(8)').html();
    
    $('#txtId').val(id);
    $('#txtProyecto').val(nombre);
    $('#sMunicipio option:contains('+municipio+')').attr('selected', true);
    $('#sEstado option:contains('+estado+')').attr('selected', true);
    $('#txtComentario').val(comentario);
    $('#txtCostoI').val(costoI);
    $('#txtCostoF').val(costoF);
    $('#txtFechaI').val(fechaI);
    $('#txtFechaF').val(fechaF);
} 


function agregar(){    
    jQuery( document ).ready(function() { 
      $('#btnModificar').prop("disabled", true);
      $('#btnGuardar').prop("disabled", false);
      $('#btnEliminar').prop("disabled", true);
      
      
            // true para desactivarlo o false para volverlo a activar
   }); 
}


function modificar(){    
    jQuery( document ).ready(function() { 
      $('#btnGuardar').prop("disabled", true);
      $('#btnEliminar').prop("disabled", true);
      $('#btnModificar').prop("disabled", false);
       // true para desactivarlo o false para volverlo a activar
   }); 
}

function eliminar(){
        jQuery( document ).ready(function() { 
       $('#btnGuardar').prop("disabled", true);
       $('#btnModificar').prop("disabled", true);
       $('#btnEliminar').prop("disabled", false);
       // true para desactivarlo o false para volverlo a activar
   }); 
}
function activar(){  
const estado = document.querySelector("#sEstado");
estado.addEventListener("change", () => {
  if (estado.value === "Cancelado") {
   const input = document.querySelector("[name=txtComentario]");   
    input.style.display = 'initial';
    $("#txtComentario").prop('disabled', false);
    document.getElementById("aparece").style.display = "inline";
  } else if(estado.value === "Entregado"){
    input.style.display = 'none';
  }else if(estado.value === "Confirmado"){
     input.style.display = 'none'; 
  }
});  
}; 


