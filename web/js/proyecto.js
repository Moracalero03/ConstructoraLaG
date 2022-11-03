/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */



$('body').on('click', '#modificar', function(){
    llenarFormulario($(this).closest('tr'));
    document.getElementById("aparece").style.display = "inline";
});

$('body').on('click', '#eliminar', function (){
    llenarFormulario($(this).closest("tr"));
}); 

$('#mdlProyecto').on('hide.bs.modal', function (event) {
    $("#mdlProyecto input").val("");
       $("#txtId").val(0);       
    $("#mdlProyecto button").prop("disabled", false);
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
      jQuery('#btnModificar').prop("disabled", true);
      jQuery('#btnEliminar').prop("disabled", true);
      $("#txtComentario").prop('disabled', false);
      

            // true para desactivarlo o false para volverlo a activar
   }); 
}


function modificar(){    
    jQuery( document ).ready(function() { 
      jQuery('#btnGuardar').prop("disabled", true);
       jQuery('#btnEliminar').prop("disabled", true);
       // true para desactivarlo o false para volverlo a activar
   }); 
}

function eliminar(){
        jQuery( document ).ready(function() { 
      $('#btnGuardar').prop("disabled", true);
       $('#btnModificar').prop("disabled", true);  // true para desactivarlo o false para volverlo a activar
   }); 
}
 
function activar(elemento)
{
if(elemento.sEstado.options[elemento.sEstado.selectedIndex].text==="Cancelado")
  { document.getElementById("aparece").style.display = "inline";
       $("#txtComentario").prop('disabled', false);
  }else if (elemento.sEstado.options[elemento.sEstado.selectedIndex].text==="Entregado"){
     document.getElementById("aparece").style.display = "none"; 
          $("#txtComentario").prop('disabled', true);
    }else if (elemento.sEstado.options[elemento.sEstado.selectedIndex].text==="Ingresado"){
     document.getElementById("aparece").style.display = "none"; 
        $("#txtComentario").prop('disabled', true);
  }else if (elemento.sEstado.options[elemento.sEstado.selectedIndex].text==="Confirmado"){
     document.getElementById("aparece").style.display = "none"; 
 $("#txtComentario").prop('disabled', true);
  }
};



