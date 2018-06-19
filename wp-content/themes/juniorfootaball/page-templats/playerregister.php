<?php
/* Template Name: Player Register Page */
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
			<span class="playermsg"></span>
            <form name="playerform" action="" id="playerform">
                <div class="innerpg_form_wrapper">
                    <div class="form_header_line">
                        <div class="form_header"><span>Clubgegevens</span></div>
                    </div>
                    <div class="row">
                        <div class="col-md-6 col-xs-12">
                            <div class="form-group">
                                <input type="text" class="form-control " placeholder="voornaam" name="first_name">
                            </div>
                        </div>
                        <div class="col-md-6 col-xs-12">
                            <div class="form-group">
                                <input type="text" class="form-control " placeholder="achternaam" name="last_name">
                            </div>
                        </div>
                        <div class="col-md-6 col-xs-12">
                            <div class="form-group">
                                <input type="text" class="form-control " placeholder="playeremail" name="email">
                            </div>
                        </div>
                        <div class="col-md-6 col-xs-12">
                            <div class="form-group">
                                <input type="text" class="form-control " placeholder="straat" name="street">
                            </div>
                        </div>
                        <div class="col-md-6 col-xs-12">
                            <div class="form-group">
                                <input type="text" class="form-control " placeholder="huisnummer" name="houe_no">
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
                                <input type="text" class="form-control " placeholder="leeftijd" name="age">
                            </div>
                        </div>
                        <div class="col-md-6 col-xs-12">
                            <div class="form-group">
                                <input type="text" class="form-control " placeholder="onder de 18: naam ouders" name="parents_name">
                            </div>
                        </div>
                        <div class="col-md-6 col-xs-12">
                            <div class="form-group">
                                <input type="text" class="form-control " placeholder="lengte" name="length">
                            </div>
                        </div>
                        <div class="col-md-6 col-xs-12">
                            <div class="form-group">
                                <input type="text" class="form-control " placeholder="gewicht"  name="mass">
                            </div>
                        </div>



                    </div>



                    <div class="form_header_line">
                        <div class="form_header"><span>Voetbalgegevens</span></div>
                    </div>
                    <div class="row">


                        <div class="col-md-6 col-xs-12">
                            <div class="form-group">
                                <input type="text" class="form-control " placeholder="club" name="club_name">
                            </div>
                        </div>
                        <div class="col-md-6 col-xs-12">
                            <div class="form-group">
                                <input type="text" class="form-control " placeholder="positie veld" name="position">
                            </div>
                        </div>
                        <div class="col-md-6 col-xs-12">
                            <div class="form-group">
                                <input type="text" class="form-control " placeholder="klassement" name="rankings">
                            </div>
                        </div>
                        <div class="col-md-6 col-xs-12">
                            <div class="form-group">
                                <input type="text" class="form-control " placeholder="speelvoet" name="play_foot">
                            </div>
                        </div>
                        <div class="col-md-6 col-xs-12">
                            <div class="form-group">
                                <label for="Overzicht">Overzicht voetbalverleden</label>
                                <textarea  class="form-control" id="Overzicht" rows="6" name="overview"> </textarea>
                            </div>
                        </div>
                        <div class="col-md-6 col-xs-12">
                            <div class="form-group">
                                <label for="Waarom">Waarom wil je lid worden?</label>
                                <textarea  class="form-control" id="Waarom" rows="6" name="why_member"> </textarea>
                            </div>
                        </div>
                        <div class="col-md-12 col-xs-12 text-center">
                            <button class="btn btn-danger " id="playerregisterbtn"> NU  LID  WORDEN </button>
                        </div>


                    </div>


                </div>
				</form>
            </div>

        </div>


    </div>

    <div class="sponsers_wrapper">
        <div class="container">
            <h4>SPONSORS</h4>
            <ul>
                <li><a href=""> <img src="images/knvb.png"></a></li>
                <li><a href=""> <img src="images/abn-amro.png"></a></li>
                <li><a href=""> <img src="images/ad.png"></a></li>
                <li><a href=""> <img src="images/mini.png"></a></li>
                <li><a href=""> <img src="images/tmobile.png"></a></li>
            </ul>
        </div>
    </div>
<script>
$("#playerform").validate({
        ignore: ".ignore",
        rules: {
            email: {
                required: true
            },
            first_name: {
                required: true
            },
            last_name: {
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

    $("#playerregisterbtn").click(function(e){
        e.preventDefault();
        console.log("in ajax");
        console.log($('#ajax_url').val());
        if($("#playerform").valid()){
            $.ajax({
                url: $('#ajax_url').val()+"?action=playerregister",
                type: "POST",
                data: $("#playerform").serialize(),
                success: function (responseText) {
                  var result = jQuery.parseJSON(responseText);
                  if(result.status == 1){
                      jQuery(".playermsg").html(result.message);
                      jQuery(".playermsg").css("color","green");
                  }else{
                    jQuery(".playermsg").html(result.message);
                    jQuery(".playermsg").css("color","red");
                  }  
                }
            });
        }
        return false;
    });
</script>
<?php get_footer();
