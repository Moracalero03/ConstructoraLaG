$('body').on('click', '#modificar', function(){
    llenarFormulario($(this).closest('tr'));
});

$('body').on('click', '#eliminar', function(){
    llenarFormulario($(this).closest('tr'));
});

$('#mdlGestion').on('hide.bs.modal', function (event) {
   $("#mdlGestion input").val("");
  $("#mdlGestion button").prop("disabled", false);
   $("#txtIdD").val(0);
   $('#sProyecto').find('option:selected').attr('selected', false);
   $('#sEmpleado').find('option:selected').attr('selected', false);
   $('#sMaquinaria').find('option:selected').attr('selected', false);

});

function llenarFormulario(fila){
    var id1 = $(fila).children('td:eq(0)').html();
    var proyecto = $(fila).children('td:eq(2)').html();
    var empleado = $(fila).children('td:eq(3)').html();
    var maquinaria = $(fila).children('td:eq(4)').html(); 
    
    $('#txtIdD').val(id1);
    $('#sProyecto option:contains('+proyecto+')').attr('selected', true);
    $('#sEmpleado option:contains('+empleado+')').attr('selected', true);
     $('#sMaquinaria option:contains('+maquinaria+')').attr('selected', true);
};


function agregar(){    
    jQuery( document ).ready(function() { 
      jQuery('#btnModificar').prop("disabled", true);
       jQuery('#btnEliminar').prop("disabled", true);  // true para desactivarlo o false para volverlo a activar
   }); 
}


function modificar(){    
    jQuery( document ).ready(function() { 
      jQuery('#btnGuardar').prop("disabled", true);
       jQuery('#btnEliminar').prop("disabled", true);  // true para desactivarlo o false para volverlo a activar
   }); 
}

function eliminar(){
        jQuery( document ).ready(function() { 
      jQuery('#btnGuardar').prop("disabled", true);
       jQuery('#btnModificar').prop("disabled", true);  // true para desactivarlo o false para volverlo a activar
   }); 
}


