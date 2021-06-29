<?php 
include_once "layouts/header.php";
include_once "app/validations/userValidation.php";
include_once "app/models/User.php";


if($_POST){
    $validation = new uservalidation;
    $validation->setEmail($_POST['email']);
    $emailvalidation = $validation->emailValidation();
    if(empty($emailvalidation)){
        
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
                            <h4> Verify Email </h4>
                        </a>

                    </div>
                    <div class="tab-content">
                        <div id="lg1" class="tab-pane active">
                            <div class="login-form-container">
                                <div class="login-register-form">
                                    <form action="" method="post">
                                        <input type="email" name="email" placeholder="Email">
                                        <?php 
                                            if(isset($errors) && $errors){
                                                foreach($errors As $k=>$v){
                                                    echo $v;
                                                }
                                            }
                                        ?>
                                        <div class="button-box">
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