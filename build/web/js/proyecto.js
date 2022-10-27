$('body').on('click', '#modificar', function(){
    llenarFormulario($(this).closest('tr'));
});

$('body').on('click', '#eliminar', function (){
    llenarFormulario($(this).closest("tr"));
});
$("#mdlProyecto").on('hide.bs.model', function (){
   $('#mdlProyecto input').val("");
   $("#txtId").val(0);
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