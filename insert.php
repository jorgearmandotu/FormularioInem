<?php
$enlace = null;
 // function connectionDB(){

    $DB_SERVER='localhost';
    $DB_NAME='inembd1';
    $DB_USER='root';
    $DB_PASS='';
    
    $enlace = mysqli_connect($DB_SERVER,$DB_USER,$DB_PASS,$DB_NAME);
    if(!$enlace){
    echo "Error: No se pudo conectar a MySQL." . PHP_EOL;
    echo "errno de depuración: " . mysqli_connect_errno() . PHP_EOL;
    echo "error de depuración: " . mysqli_connect_error() . PHP_EOL;
    $enlace=null;
    exit;
    }
//    mysqli_query("SET NAMES 'utf8'");
    $enlace->query("SET NAMES 'utf8'");
   //return $enlace;
//}

function conecctionClose($con){
    mysqly_close($con);
}

//connectionDB();
$conectdb = $enlace;

function limpiarcadenas($cadena){
    $cadena=strip_tags($cadena);
    //$cadena=strtoupper($cadena);
    $cadena=htmlspecialchars($cadena);
    $cadena=addslashes($cadena);
    $cadena=trim($cadena);
    return $cadena;
}

$id_estudiante = limpiarcadenas($_POST['id_estudiante']);

function ingresarEstudiante($dato1, $conectdb){
    if($sql = $conectdb -> prepare("INSERT INTO estudiantes VALUES (?);")){
        $sql->bind_param('s',$dato1);

        if(!$sql->execute()){
            return false;
            exit();
        }else{return true;}
    }

    //$insert = "INSERT INTO 'estudiante'('id_estudiante') VALUES(456)";
    
}

if($conectdb != null){
    if(ingresarEstudiante($id_estudiante, $conectdb)){
        conecctionClose($conectdb);
        echo '<script type="text/javascript">alert("inscripcion exitosa exitoso")</script>';
    }else{
        echo '<script type="text/javascript">alert("ocurrio un error verifique datos o contacte a soporte tecnico")</script>';
                //return false;
    }
}


//ingresarEstudiante($id_estudiante, $conectdb);

?>