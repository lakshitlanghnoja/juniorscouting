<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="juniorscouting">
    <meta name="author" content="juniorscouting">
    <link rel="icon" href="">

    <title>juniorscouting</title>

    <!-- Bootstrap core CSS -->
    <link href="<?php echo get_template_directory_uri(); ?>/css/bootstrap.css" rel="stylesheet">

    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <!-- <link href="../../assets/css/ie10-viewport-bug-workaround.css" rel="stylesheet"> -->

    <!-- Custom styles for this template -->
    <link href="<?php echo get_template_directory_uri(); ?>/fonts/primary-font/stylesheet.css" rel="stylesheet">
    <link href="<?php echo get_template_directory_uri(); ?>/fonts/font-awesome-4.7.0/css/font-awesome.css" rel="stylesheet">
    <link href="<?php echo get_template_directory_uri(); ?>/css/custom.css" rel="stylesheet">
    <link href="<?php echo get_template_directory_uri(); ?>/css/mediaquery.css" rel="stylesheet">


    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
	
	<script src="<?php echo get_template_directory_uri(); ?>/js/jquery.min.js"></script>
<script src="<?php echo get_template_directory_uri(); ?>/js/bootstrap.min.js"></script>
<script src="<?php echo get_template_directory_uri(); ?>/js/jquery.validate.min.js"></script>
<script src="<?php echo get_template_directory_uri(); ?>/js/custom.js"></script>


</head>

<body class="thetop">
<input type="hidden" id="ajax_url" value="<?php echo admin_url('admin-ajax.php'); ?>">
<!-- start navigation -->
<div class="top_bar_wrapper">
    <div class="container">
        <div class="row">
            <div class="col-md-6 col-sm-12 col-xs-12 pull-right ">
                <?php if(!is_user_logged_in()){ ?>
                    <span class="errormessage" style="color:#fff;position:absolute;left:15px;top:32px;"></span>
                <form class="top_login" id="loginform" name="loginform">
                    <div class="form-group">
                        <input type="email" class="form-control email" placeholder="gebruikersnaam" name="email">
                    </div>
                    <div class="form-group ">
                        <input type="password" class="form-control password" placeholder="wachtwoord" name="pwd">
                    </div>


                </form>
                <div class="btn btn-primary login_btn">INLOGGEN</div>
            <?php } 
            else{ 
                $current_user = wp_get_current_user();
                ?>
                <div style="color:#fff;">Hi, <?php echo $current_user->user_login; ?></div>
            <?php } ?>
                <div class="dropdown ">
                    <button class="btn btn-transperant dropdown-toggle" type="button" data-toggle="dropdown"><img
                            src="<?php echo get_template_directory_uri(); ?>/images/globe_icon.png">
                        <span class="caret"></span></button>
                    <ul class="dropdown-menu dropdown-menu-right">
                        <li><a href="#">English</a></li>
                        <li><a href="#">Dutch</a></li>

                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="top_nav_wrapper">
    <div class="navbar  navbar-default ">
        <div class="container">
            <div class="row">

                <div class="col-md-12 ">
                    <div class="navbar">
                        <!-- Navigation-->
                        <div class="navbar-header go-right">
                            <a class="navbar-brand" rel="home" href="<?php echo get_site_url(); ?>" title="">
                                <img src="<?php echo get_template_directory_uri(); ?>/images/juniorscouting_logo.png">
                            </a>

                            <button data-target=".navbar-collapse" data-toggle="collapse" class="navbar-toggle"
                                    type="button">
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </button>
                            <a href="" class="navbar-brand"><img src="" alt="" class="moto"></a>
                        </div>
                        <div class="navbar-collapse collapse">
                            <ul class="nav navbar-nav navbar-right go-left">
                                <li class="go-right  ">
                                    <a href="<?php echo get_site_url(); ?>" class="editfromStack" target="_self">
                                        <img src="<?php echo get_template_directory_uri(); ?>/images/home_icon.png"/><span>Home   </span> </a>
                                </li>
                                <li class="go-right  ">
                                    <a href="<?php echo esc_url(get_permalink(get_page_by_path('Player Profile Page'))); ?>" class="editfromStack" target="_self">
                                        <img src="<?php echo get_template_directory_uri(); ?>/images/spelers_icon.png"/><span> Spelers    </span> </a>
                                </li>
                                <li class="go-right  ">
                                    <a href="<?php echo esc_url(get_permalink(get_page_by_path('Club Profile Page'))); ?>" class="editfromStack" target="_self">
                                        <img src="<?php echo get_template_directory_uri(); ?>/images/clubs_icon.png"/> <span>Clubs       </span> </a>
                                </li>
                                <li class="go-right  ">
                                    <a href="<?php echo esc_url(get_permalink(get_page_by_path('Agenda Page'))); ?>" class="editfromStack" target="_self">
                                        <img src="<?php echo get_template_directory_uri(); ?>/images/agenda_icon.png"/><span> Agenda  </span> </a>
                                </li>

                                <li class="go-right  ">
                                    <a href="#" class="editfromStack" target="_self">
                                        <img src="<?php echo get_template_directory_uri(); ?>/images/webshop_icon.png"/><span>Webshop  </span> </a>
                                </li>
                                <li class="go-right  ">
                                    <a href="#" class="editfromStack" target="">
                                        <img src="<?php echo get_template_directory_uri(); ?>/images/info_icon.png"/><span>Informatie   </span> </a>
                                </li>


                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


</div>
<script>
jQuery(document).ready(function(){

    jQuery(".errormessage").html("");
})
$("#loginform").validate({
        ignore: ".ignore",
        rules: {
            email: {
                required: true
            },
            pwd: {
                required: true
            },
        },
        errorPlacement: function (error, element) {
            
    element.addClass('error');

}
});

$(".login_btn").click(function(e){
        e.preventDefault();
        console.log("in ajax12");
        
        if($("#loginform").valid()){
            $.ajax({
                url: $('#ajax_url').val()+"?action=userlogin",
                type: "POST",
                data: $("#loginform").serialize(),
                success: function (responseText) {
                    var result = jQuery.parseJSON(responseText);
                    console.log(result);
                    if(result.success == 1){
                        window.location.href = result.message;
                    }else{
                        jQuery(".errormessage").html("Invalid email or password");
                    }
                }
            });
        }else{
            console.log("in else");
            jQuery(".errormessage").html("Invalid email or password");
        }
        return false;
    });
</script>