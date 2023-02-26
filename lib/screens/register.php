<?php
$conn = mysqli_connect("localhost", "root","","customers");


if(!$conn){
	echo"NaShod";
}

 $first_name=$_POST['first_name'];
     $last_name=$_POST['last_name'];
          $email=$_POST['email'];
              $password=$_POST['password'];
                  $confirm=$_POST['confirm'];

				  $sql = "SELECT * FROM users WHERE first_name_name = '$first_name' 
				  AND last_name = '$last_name'
				  AND email = '$email'
				  AND password = '$password'
				  AND confirm = '$confirm'";
				  
				  $result = mysqli_query($conn,$sql);
				  $count = mysqli_num_rows($result);
				  
				  
				  if($count == 1){
					  echo json_encode("error");
				  }
				  
				  else {
                 $insert = "INSERT INTO users (first_name, last_name,email,password,confirm)
                  VALUES ('$first_name','$last_name','$email','$password','$confirm')";
				  
				  $query = mysqli_query($conn,$insert);
				  
				    if($query){
						echo json_encode("success");
						
					}

				  }
				  
				  


?>