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

$(document).ready(function() {
    $('#btnGuardar').click(function(event) { 
         $('#mdlGestion').validetta({
            realTime: true,
            onValid: function(e) {
            event.preventDefault()
                var codigo = $('#txtIdD').val();
                var proyecto = $('#sProyecto').val();
                var empleado = $('#sEmpleado').val();
                var maquinaria = $('#sMaquinaria').val();
                
                $.post('MaquinasServlet', {
                        txtIdD : codigo,
                        sProyecto : proyecto, 
                        sEmpleado : empleado, 
                        sMaquinaria : maquinaria
                })
        }
    });
});   
});  

$(document).ready(function() {
    $('#btnModificar').click(function(event) { 
         $('#mdlGestion').validetta({
            realTime: true,
            onValid: function(e) {
            event.preventDefault()
                var codigo = $('#txtIdD').val();
                var proyecto = $('#sProyecto').val();
                var empleado = $('#sEmpleado').val();
                var maquinaria = $('#sMaquinaria').val();
                
                $.post('MaquinasServlet', {
                        txtIdD : codigo,
                        sProyecto : proyecto, 
                        sEmpleado : empleado, 
                        sMaquinaria : maquinaria
                })
        }
    });
});   
}); 


function agregar(){    
    jQuery( document ).ready(function() {
      $('#mdlGestion select').prop("disabled", false),
      $('#btnGuardar').prop("disabled", false);   
      $('#btnModificar').prop("disabled", true);
      $('#btnEliminar').prop("disabled", true);  // true para desactivarlo o false para volverlo a activar
   }); 
}


function modificar(){    
    jQuery( document ).ready(function() { 
      $('#mdlGestion select').prop("disabled", false),
      $('#btnGuardar').prop("disabled", true);
      $('#btnModificar').prop("disabled", false);
      $('#btnEliminar').prop("disabled", true);  // true para desactivarlo o false para volverlo a activar
   }); 
}

function eliminar(){
        jQuery( document ).ready(function() { 
      $('#mdlGestion select').prop("disabled", true),
      $('#btnGuardar').prop("disabled", true);
      $('#btnModificar').prop("disabled", true);
      $('#btnEliminar').prop("disabled", false); // true para desactivarlo o false para volverlo a activar
   }); 
}


