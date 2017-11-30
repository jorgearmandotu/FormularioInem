<?php

include("conexion.php");

    if (isset($_POST['id_estudiante'])&& !empty($_POST['id_estudiante'])&&
    (isset($_POST['prim_apellido'])&& !empty($_POST['prim_apellido'])&&
    (isset($_POST['seg_apellido'])&& !empty($_POST['seg_apellido']))))
                                {                      
        $con=mysql_connect($host,$user,$pw)or die("problema al conectar");
            mysql_select_db($db,$con)or die("problema al conectar");
            mysql_query("INSERT INTO estudiante(id_estudiante,prim_apellido,seg_apellido)VALUES ('$_POST[id_estudiante]','$_POST[prim_apellido]','$_POST[seg_apellido]')",$con);
        echo "datos insertados";
    }else
    {echo "problemas al insertar datos".$_POST['id_estudiante'].$_POST['prim_apellido'].$_POST['seg_apellido'];
   
}
?>
