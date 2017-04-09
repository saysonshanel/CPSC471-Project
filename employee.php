
<html">
   
   <head>
      <title>Welcome </title>

        <body>
            <h1>Welcome <?php echo $login_session; ?></h1> 
        </body>
       <style>
       table, td, th{
           border: 1px solid black;
       }
       
       table{
           border-collapse: collapse;
           width: 50%;          
       }
       
       th{
           text-align: left;
       }
           
        </style>
        

   
   </head>

   
</html>


<?php
include("config.php");
include("session.php");

session_start();
$query = $db->query("SELECT * FROM employee");

while($table_name = mysqli_fetch_row($query)){

	if(mysqli_num_rows($query)) {
		echo '<table cellpadding="0" cellspacing="0" class="db-table">';
                echo '<tr><th>EMPid</th><th>Ename</th><th>superID</th><th>Bid</th><th>dname</th></tr>';

		while($row2 = mysqli_fetch_row($query)) {
			echo '<tr>';
			foreach($row2 as $key=>$value) {
				echo '<td>',$value,'</td>';
			}
			echo '</tr>';
		}
		echo '</table><br />';
	}
}
//the dropdown interface
/*echo "<html>";
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
    echo "</html>";*/
?>

<html">
   <body>
      <h2><a href = "logout.php">Sign Out</a></h2>
   </body>
</html>
        

        

