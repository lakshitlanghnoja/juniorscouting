<?php
/* Template Name: Home Page */
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
<div class="container-fluid">
    <div class="row">
        <!-- Carousel -->
        <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
            <!-- Indicators -->
            <ol class="carousel-indicators">
                <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                <li data-target="#carousel-example-generic" data-slide-to="2"></li>
            </ol>
            <!-- Wrapper for slides -->
            <div class="carousel-inner">
                <?php if(have_rows('slider_details')){
				while(have_rows('slider_details')):the_row();
				$slidertext = get_sub_field('slider_text',$pageID);
                $sliderimg = get_sub_field('slider_image',$pageID); 
                ?>
                <div class="item">
                    <img src="<?php echo get_template_directory_uri(); ?>/images/banner.png" alt="First slide">
                    <!-- Static Header -->
                    <div class="header-text hidden-xs">
                        <div class="col-md-12 text-center">
                            <h2><strong>
                               <?php echo $slidertext; ?></strong>
                            </h2>

                            <div class="">
                                <a class="btn btn-theme btn-sm btn-min-block" href="#">VOOR SPELERS</a>
                                <a class="btn btn-theme btn-sm btn-min-block" href="#">VOOR CLUBS</a>
                            </div>
                        </div>
                    </div><!-- /header-text -->
                </div>
                
                <?php endwhile;
                } ?>
            </div>
            <!-- Controls -->
            <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
                <img src="<?php echo get_template_directory_uri(); ?>/images/slider_nav_left.png">
            </a>
            <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
                <img src="<?php echo get_template_directory_uri(); ?>/images/slider_nav_right.png">
            </a>
        </div><!-- /carousel -->
    </div>
</div>

<?php
$search = realpath(__DIR__ . '/..').'\template-parts\search-widget.php';


if (file_exists($search)) {
    // echo "in if";exit;
    require( $search );
}
?>
<div class="middlepart_wrapper">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h3 class="header">Wordt nu lid van Junior Scouting</h3>
            </div>

            <div class="col-md-6 leftpart">
                <img class="icon_image" src="<?php echo get_template_directory_uri(); ?>/images/jr_spelers_icon.png"/>
                <h5 class="header">Voor junior spelers</h5>
                <h6>€ 50 / jaar </h6>
                <a class="btn btn-theme btn-sm btn-min-block" href="<?php echo esc_url(get_permalink(get_page_by_path('Player Register Page'))); ?>">Lid worden als speler</a>
                <p class="bodytxt">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec eget congue sapien.
                    Nunc maximus laoreet quam, in sollicitudin diam dignissim ornare. Integer venenatis arcu venenatis
                    neque rutrum, vel vehicula neque bibendum. Orci varius natoque penatibus et magnis dis parturient
                    montes, nascetur ridiculus mus. Maecenas ligula dolor, sagittis ut mauris sit amet, maximus
                    scelerisque tellus. Praesent et fringilla augue, quis tincidunt est. Ut sed dolor at justo consequat
                    elementum. </p>
                <ul>
                    <li>uitgebreide profielpagina</li>
                    <li>wordt opgemerkt door clubs</li>
                    <li>korting in de webshop</li>
                </ul>
            </div>
            <div class="col-md-6 rightpart">
                <img class="icon_image" src="<?php echo get_template_directory_uri(); ?>/images/voor_clubs_icon.png"/>
                <h5 class="header">Voor clubs</h5>
                <h6>€ 350 / jaar </h6>
                <a class="btn btn-theme btn-sm btn-min-block" href="<?php echo esc_url(get_permalink(get_page_by_path('Club Register Page'))); ?>">Lid worden als club</a>
                <p class="bodytxt">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec eget congue sapien.
                    Nunc maximus laoreet quam, in sollicitudin diam dignissim ornare. Integer venenatis arcu venenatis
                    neque rutrum, vel vehicula neque bibendum. Orci varius natoque penatibus et magnis dis parturient
                    montes, nascetur ridiculus mus. Maecenas ligula dolor, sagittis ut mauris sit amet, maximus
                    scelerisque tellus. Praesent et fringilla augue, quis tincidunt est. Ut sed dolor at justo consequat
                    elementum. </p>
                <ul>
                    <li>uitgebreide zoekmogelijkheden</li>
                    <li>contacteren van spelers</li>
                    <li>uitgebreide profielpagina</li>
                    <li>korting in de webshop</li>
                </ul>
            </div>
        </div>
    </div>

</div>

<?php 

$commonSponsor = realpath(__DIR__ . '/..').'/template-parts/common-sponsor.php';
$commonCards = realpath(__DIR__ . '/..').'/template-parts/common-cards.php';

if (file_exists($commonSponsor)) {
    // echo "in if";exit;
    require( $commonSponsor );
}
if (file_exists($commonCards)) {
    // echo "in if";exit;
    require( $commonCards );
}

?>
<script>
$(".search-btn").click(function(){
    var playername = $(".playername").val();
    var age = $(".age").val();
    var agenda = $(".agenda").val();
    console.log(playername);
    // return false;
    var param = "?playername="+playername+"&age="+age+"&agenda="+agenda;
    var url = "http://localhost/juniorfootball/search-result"+param;
    // console.log(url);
    // return false;
    window.location.href=url;
    
});
</script>
<?php get_footer();
