


<?php
include("config.php");
include("session.php");

session_start();
$query = $db->query("SELECT * FROM employee");



echo "<html>";
echo "<body>";
echo "<select Ename = 'Ename'>";
while($row = $query->fetch_assoc()){
    unset($id, $name);
    $id = $row['EMPid'];
    $name = $row['Ename'];
    echo '<option value="'.$id.'">'.$name.'</option>';
}
    echo "</select>";
    echo "</body>";
    echo "</html>";
?>


<html">
   
   <head>
      <title>Welcome </title>
   </head>
   
   <body>
      <h1>Welcome <?php echo $login_session; ?></h1> 
      <h2><a href = "logout.php">Sign Out</a></h2>
   </body>
   
</html>
        

