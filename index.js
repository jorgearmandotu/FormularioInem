//alert("llamando al archivo JS");
function validarForm(){
        
    var verificar = true;
    var expRegNombre =/^[a-zA-AÑñÁÉÍÓÚáéíóú]+$/;
    var expRegEmail =/^[\w=\.]+@([\w-]+\.)+[\w-]{2,4}$/;

    var formulario = document.getElementById("datosPersonales");
    var apellido = document.getElementById("apellido1");
    var nombre = document.getElementById("nombre1");
    var identificacion = document.getElementById("iestudiante");
    var celular = document.getElementById("celular");
    var correo = document.getElementById("email");

    if(!apellido.value){
        alert("El campo apellido es requerido");
        apellido.focus();
        verificar = false;
    }
    else if (!nombre.value) {
        alert("El campo nombre es requerido");
        nombre.focus();
        verificar = false;
    }
    else if (!expRegNombre.exec(nombre.value)) {
        alert("El campo nombre solo acepta letras");
        nombre.focus();
        verificar = false;
    }
    else if (!identificacion.value) {
        alert("El campo identificación es requerido");
        identificacion.focus();
        verificar = false;
    }
    else if(isNaN(identificacion.value)){
        alert("Solamente se admiten Números");
        identificacion.focus();
        verificar=false;

    }
    else if (!celular.value) {
        alert("El número de contacto es requerido");
        celular.focus();
        verificar = false;
    }
    else if (isNaN(celular.value)) {
        alert("Solamente se admiten Números");
        celular.focus();
        verificar = false;

    }
    else if (!expRegEmail.exec(correo.value)) {
        alert("El campo email no es valido");
        correo.focus();
        verificar = false;
    }
    if(verificar){
        alert("Se ha enviado el formulario");
        //document.datos_frm.submit();

    }
}
function enviar(){
    alert("Enviando Datos");
}
function imprimir(){
    alert("Imprimiendo");
}
window.onload = function(){
    var botonEnviar, botonImprimir;
    botonImprimir = document.getElementById("imprimir");
    botonImprimir.onclick = imprimir;

    botonEnviar = document.datos_frm.enviar;
    botonEnviar.onclick = validarForm;
}
