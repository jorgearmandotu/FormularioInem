//alert("llamando al archivo JS");
function validacion(){
        var id = document.getElementById("id_estudiante").value;
        if (id == ""){
            alert("Campo Identificacion Estudiante sin diligenciar");
            return false;
        }
}