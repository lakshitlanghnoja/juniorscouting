<?php
/* Template Name: Club Register Page */
/**
 * The template for displaying all pages
 *
 * This is the template that displays all pages by default.
 * Please note that this is the WordPress construct of pages
 * and that other 'pages' on your WordPress site may use a
 * different template.
 *
 * @link https://codex.wordpress.org/Template_Hierarchy
 *
 * @package WordPress
 * @subpackage Twenty_Seventeen
 * @since 1.0
 * @version 1.0
 */

get_header(); 
$pageID = get_the_ID();
?>

<div class="inner_wrapper">
    <div class="container">

        <div class="row">
            <div class="col-md-12 col-xs-12">
                <h3 class="header"><?php echo get_the_title(); ?></h3>
            </div>


        </div>
        <div class="row">
            <?php while ( have_posts() ) : the_post(); ?>
            <div class="col-md-6 col-xs-12">
            <?php echo the_content(); ?>
            </div>
            <?php
    endwhile; //resetting the page loop
    wp_reset_query(); //resetting the page query
    ?>

            <div class="col-md-6 col-xs-12">
                <div class="innerpg_form_wrapper">
                    <div class="form_header_line">
                        <div class="form_header"><span>Clubgegevens</span></div>
                    </div>
                    <span class="clubmsg    "></span>
					<form id="clubform" action="" method="post">
                    <div class="row">
                        <div class="col-md-6 col-xs-12">
                            <div class="form-group">
                                <input type="text" class="form-control " placeholder="club email" name="clubemail">
                            </div>
                        </div>
                        <div class="col-md-6 col-xs-12">
                            <div class="form-group">
                                <input type="text" class="form-control " placeholder="naam club" name="clubname">
                            </div>
                        </div>
                        <div class="col-md-6 col-xs-12">
                            <div class="form-group">
                                <input type="text" class="form-control " placeholder="hoeveel teams" name="no_of_teams">
                            </div>
                        </div>
                        <div class="col-md-6 col-xs-12">
                            <div class="form-group">
                                <input type="text" class="form-control " placeholder="straat" name="street">
                            </div>
                        </div>
                        <div class="col-md-6 col-xs-12">
                            <div class="form-group">
                                <input type="text" class="form-control " placeholder="huisnummer" name="house_no">
                            </div>
                        </div>

                        <div class="col-md-6 col-xs-12">
                            <div class="form-group">
                                <input type="text" class="form-control " placeholder="postcode" name="postcode">
                            </div>
                        </div>
                        <div class="col-md-6 col-xs-12">
                            <div class="form-group">
                                <input type="text" class="form-control " placeholder="plaats" name="place">
                            </div>
                        </div>
                        <div class="col-md-6 col-xs-12">
                            <div class="form-group">
                                <input type="text" class="form-control " placeholder="functie invuller formulier" name="function_filler">
                            </div>
                        </div>
                        <div class="col-md-6 col-xs-12">
                            <div class="form-group">
                                <input type="text" class="form-control " placeholder="naam invuller formulier" name="name_filler">
                            </div>
                        </div>
                        <div class="col-md-12 col-xs-12">
                            <div class="form-group">
                                <label for="gevonden">Hoe heb je ons gevonden?</label>
                                <textarea  class="form-control" id="gevonden" rows="8" name="how_did_you_find_us"> </textarea>
                            </div>
                        </div>
                    
                        <div class="col-md-12 col-xs-12 text-center">
                            <button class="btn btn-danger " id="clubregisterbtn"> NU  LID  WORDEN </button>
                        </div>


                    </div>
				</form>

                </div>
            </div>

        </div>


    </div>

<div class="sponsers_wrapper">
    <div class="container">
        <h4>SPONSORS</h4>
        <ul>
            <li><a href=""> <img src="<?php echo get_template_directory_uri(); ?>/images/knvb.png"></a></li>
            <li><a href=""> <img src="<?php echo get_template_directory_uri(); ?>/images/abn-amro.png"></a></li>
            <li><a href=""> <img src="<?php echo get_template_directory_uri(); ?>/images/ad.png"></a></li>
            <li><a href=""> <img src="<?php echo get_template_directory_uri(); ?>/images/mini.png"></a></li>
            <li><a href=""> <img src="<?php echo get_template_directory_uri(); ?>/images/tmobile.png"></a></li>
        </ul>
    </div>
</div>
<script>
$("#clubform").validate({
        ignore: ".ignore",
        rules: {
            clubemail: {
                required: true
            },
            clubname: {
                required: true
            },
            no_of_teams: {
                required: true
            },
            street: {
                required: true
            },
            house_no: {
                required: true
            },
            place: {
                required: true
            },
            postcode: {
                required: true
            },
        },
        errorPlacement: function (error, element) {
            if (element.attr("name") == "adult_count") {
                element.parent('.form-group').children('.dk-select').children('.dk-selected').addClass('error');
//            element.parent('.form-group').children('.dk-select').children('.dk-selected').css('border','none'); //1px solid #425563
} else {
    element.addClass('error');
}
}
});

    $("#clubregisterbtn").click(function(e){
        e.preventDefault();
        console.log("in ajax");
        console.log($('#ajax_url').val());
        if($("#clubform").valid()){
            $.ajax({
                url: $('#ajax_url').val()+"?action=clubregister",
                type: "POST",
                data: $("#clubform").serialize(),
                success: function (responseText) {
                    var result = jQuery.parseJSON(responseText);
                  if(result.status == 1){
                      jQuery(".clubmsg").html(result.message);
                      jQuery(".clubmsg").css("color","green");
                  }else{
                    jQuery(".clubmsg").html(result.message);
                    jQuery(".clubmsg").css("color","red");
                  }                
                }
            });
        }
        return false;
    });
</script>
<?php get_footer();
