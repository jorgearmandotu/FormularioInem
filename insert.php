
<?php
  
  function connectionDB(){

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
    return $enlace;
}

connectionDB();

function ingresarPersona(){
    
   //encripta la contraseña
    //$contrasena = password_hash($password, PASSWORD_DEFAULT);
    
    if($sql = $enl->prepare("
    INSERT INTO estudiante VALUES(?);")){
    $sql->bind_param('sssssssss',$cedula,$nombre,$apellido,$email,$telefono,$tipo,$usuario,$contrasena,$punto);
    if(!$sql->execute()){
        echo('<script type="text/javascript">alert("ocurrio un error buebe a intentarlo, si el problema persiste intenta en cerrar sesion e iniciarla de nuevo")</script>');
        header('index.php');
        exit();
    }
        return true;
    }
    else{
        return false;
    }
}
?>