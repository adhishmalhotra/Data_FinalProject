<?php

// declaring variabels to prevent errors 
$fname = "";
$lname = ""; 
$em = ""; 
$em2 = ""; 
$password = ""; 
$password2 = "";
$date = "";  
$error_array = array(); 


if(isset($_POST['register_button'])){
    //registeration form values 
    //First Name
 

    $fname = strip_tags($_POST['reg_fname']);
    $fname = str_replace(' ', '', $fname);
    $fname = ucfirst(strtolower($fname));
    $_SESSION['reg_fname'] = $fname;
    //Last Name
    $lname = strip_tags($_POST['reg_lname']);
    $lname = str_replace(' ', '', $lname);
    $lname = ucfirst(strtolower($lname));
    $_SESSION['reg_lname'] = $lname;

    //email
    $em = strip_tags($_POST['reg_email']);
    $em = str_replace(' ', '', $em);
    $em = ucfirst(strtolower($em));
    $_SESSION['reg_email'] = $em;

    //email2
    $em2 = strip_tags($_POST['reg_email2']);
    $em2 = str_replace(' ', '', $em2);
    $em2 = ucfirst(strtolower($em2));
    $_SESSION['reg_email2'] = $em2;

    //password
    $password = strip_tags($_POST['reg_password']);

    //password2
    $password2 = strip_tags($_POST['reg_password2']);

    $date = date("Y-m-d");

    if($em == $em2){
        if(filter_var($em, FILTER_VALIDATE_EMAIL)){
            $em = filter_var($em, FILTER_VALIDATE_EMAIL);

            //checking if the email already exists 
            $e_check = mysqli_query($con, "SELECT email FROM users WHERE email = '$em'");

            // count number of rows returned 
            $num_rows = mysqli_num_rows($e_check);

            if($num_rows > 0){
                array_push($error_array, "Email already in use. <br>") ;
            }
        }
        else 
        {
            array_push($error_array, "invalid format <br>");
        }

    }
    else {
        array_push($error_array, "Emails Don't match <br>");
    }

    if(strlen($fname) > 25 || strlen($fname) < 2 ){
        array_push($error_array, "Your first name must be between 2 and 25 characters <br>");
    }

    if(strlen($lname) > 25 || strlen($lname) < 2 ){
        array_push($error_array, "Your last name must be between 2 and 25 characters <br>");
    }

    if($password != $password2){
        array_push($error_array, "Passwords dont match <br>");
    }
    else { 
        if(preg_match('/[^A-Za-z0-9]/', $password)){
            array_push($error_array, "Your password can only contain english characters or numbers <br>");
        }
    }

    if(strlen($password) > 30 || strlen($password) < 5){
        array_push($error_array, "Your password must be between 5 and 30 characters <br>");
    }

    echo count($error_array);

    if(empty($error_array)){
        $password = md5($password);

        //generate the username by concatenating the first and last name
        $username = strtolower($fname . "_" . $lname);
        $check_username_query = mysqli_query($con, "SELECT username FROM users WHERE username = '$username'");

        $i = 0;
        //if username exists add a number to the username
        while(mysqli_num_rows($check_username_query) != 0){
            $i++;
            $username = $username . "_" . $i;
            $check_username_query = mysqli_query($con,"SELECT username FROM users WHERE username = '$username'");
        }
        //profile picture assignment
        $rand = rand(1,2);

        if($rand == 1){
            $profile_pic = "assets/images/profile_pics/defaults/head_deep_blue.png";
        }    

        else if($rand == 2){
            $profile_pic = "assets/images/profile_pics/defaults/head_emerald.png";
        }
            
        $query = mysqli_query($con, "INSERT INTO users VALUES ('', '$fname', '$lname', '$username', '$em', '$password', '$date', '$profile_pic', '0', '0', 'no', ',')");
   
        array_push($error_array, "<span style = 'color: #14C800;'> Account Created successfully! You can Login Now!</span> <br>");
        
        $_SESSION['reg_fname'] = "";
        $_SESSION['reg_lname'] = "";
        $_SESSION['reg_email'] = "";
        $_SESSION['reg_email2'] = "";

    }

}

?>