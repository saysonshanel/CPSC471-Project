<?php
   include('session.php');
   include('config.php');
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

                                
<?php
    if($login_session === 'administration'){
        //echo "boo";
        $admin_query = "INSERT INTO branch_office (Location) VALUES ('Toronto')";
        $admin_sql0 = "SELECT Location FROM branch_office";
        $admin_sql1 = "SELECT BranchID FROM branch_office";
        $admin_sql2 = "SELECT Phone FROM branch_office";
        echo "<br><br>Printing data in the (branch_office) table:<br>";
        $result0 = $db->query($admin_sql0);   //execute location query
        $result1 = $db->query($admin_sql1);   //execute id query
        $result2 = $db->query($admin_sql2);   //execute phone query
        
        if($result0->num_rows > 0){
            while($row0 = $result0->fetch_assoc()){
                echo "Location: ".$row0["Location"]."<br>";
            }
        }
        if($result1->num_rows > 0){
            while($row1 = $result1->fetch_assoc()){
                echo "BranchId".$row1["BranchID"]."<br>";
            }
        }
        if($result2->num_rows > 0){
            while($row2 = $result2->fetch_assoc()){
                echo "Phone".$row2["Phone"]."<br>";
            }       
        }


    }else if($login_session === 'customer'){
        echo "foo";
    }else if($login_session === 'employee'){
        echo "bar";
    }else{
        $db->close();
    }
        
?>
                                
                             
