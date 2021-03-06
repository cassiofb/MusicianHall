<!DOCTYPE html>
<html lang="en">
    
<head>
        <title>Matrix Admin</title><meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <link rel="stylesheet" href="assets/css/bootstrap.min.css" />
        <link rel="stylesheet" href="assets/css/bootstrap-responsive.min.css" />
        <link rel="stylesheet" href="assets/css/matrix-login.css" />
        <link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
        <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700,800' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" href="assets/css/main.css" />

</head>
    <body>
        <div id="loginbox">
            <form id="loginform" class="form-vertical" action="<?php echo base_url('login/loggin'); ?>" method="POST">
                 <div class="control-group normal_text"> <h3><img src="assets/img/logo.png" alt="Logo" /></h3></div>
                <div class="control-group">
                    <div class="controls">
                        <div class="main_input_box" style="position: relative;">
                            <span class="error-message" style="width: 100%;"><?php echo $this->session->flashdata('erroLogin'); ?></span>
                            <span class="add-on bg_lg"><i class="icon-user"> </i></span>
                            <input type="text" name="user" placeholder="Username" />
                        </div>
                    </div>
                </div>
                <div class="control-group">
                    <div class="controls">
                        <div class="main_input_box">
                            <span class="add-on bg_ly"><i class="icon-lock"></i></span>
                            <input type="password" name="passwd" placeholder="Password" />
                        </div>
                    </div>
                </div>
                <div class="form-actions">
                    <span class="pull-left"><a href="#" class="flip-link btn btn-info" id="to-recover">Esqueceu a senha?</a></span>
                    <span class="pull-right"><input type="submit" class="btn btn-success" value="Login"/></span>
                </div>
            </form>
            <form id="recoverform" action="#" class="form-vertical">
                <p class="normal_text">Entre com seu email abaixo para resetar a sua senha.</p>
                
                    <div class="controls">
                        <div class="main_input_box">
                            <span class="add-on bg_lo"><i class="icon-envelope"></i></span><input type="text" placeholder="E-mail address" />
                        </div>
                    </div>
               
                <div class="form-actions">
                    <span class="pull-left"><a href="#" class="flip-link btn btn-success" id="to-login">&laquo; Back to login</a></span>
                    <span class="pull-right"><a class="btn btn-info"/>Reecover</a></span>
                </div>
            </form>
        </div>
        
        <script src="assets/js/jquery.min.js"></script>  
        <script src="assets/js/matrix.login.js"></script> 
    </body>

</html>
