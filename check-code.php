<?php 
include_once "layouts/header.php"; 
include_once "app/validation/uservalidation.php";
include_once "app/models/user.php";

$validation = new uservalidation;
$user  =  $validation->emailURLvalidation($_GET);
// print_r($user);die;
// $_GET['email'];
// $_POST['code'];
if($_POST){
    $errors=[];
$codeCheck = new user;
$codeCheck->setEmail($_GET['email']);
$codeCheck->setCode($_POST['code']);
$result = $codeCheck->checkCode();
if($result){
$codeCheck->setStatus(1);
$result2 = $codeCheck->updateStatus();
if($result2){
    $_SESSION['user'] = $user;
    header('location:index.php');
}else{
    $errors['something'] = "<div class='alert alert-danger'>something wrong</div>";
}
}else{
    $errors['code'] = "<div class='alert alert-danger'>wrong code</div>";
}    

}

?>

<!-- Breadcrumb Area End -->
<div class="login-register-area ptb-100">
    <div class="container">
        <div class="row">
            <div class="col-lg-7 col-md-12 ml-auto mr-auto">
                <div class="login-register-wrapper">
                    <div class="login-register-tab-list nav">
                        <a class="active" data-toggle="tab" href="#lg1">
                            <h4> Check Code </h4>
                        </a>

                    </div>
                    <div class="tab-content">
                        <div id="lg1" class="tab-pane active">
                            <div class="login-form-container">
                                <div class="login-register-form">
                                    <form action="" method="post">
                                        <input type="text" name="code" placeholder="Code">
                                        <?php
                                        if(isset($errors)){
                                              foreach($errors AS $key=>$value){
                                                 echo $value;
                                            }
                                          }
                                              ?>
                                            <button type="submit"><span>Verify</span></button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<?php include_once "layouts/footer.php"; ?>